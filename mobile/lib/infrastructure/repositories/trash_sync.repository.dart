import 'dart:async';

import 'package:collection/collection.dart';
import 'package:drift/drift.dart';
import 'package:immich_mobile/constants/constants.dart';
import 'package:immich_mobile/domain/models/album/local_album.model.dart';
import 'package:immich_mobile/domain/models/asset/base_asset.model.dart';
import 'package:immich_mobile/domain/models/asset/remote_deleted_local_asset.model.dart';
import 'package:immich_mobile/domain/models/store.model.dart';
import 'package:immich_mobile/entities/store.entity.dart';
import 'package:immich_mobile/extensions/platform_extensions.dart';
import 'package:immich_mobile/infrastructure/entities/trash_sync.entity.dart';
import 'package:immich_mobile/infrastructure/entities/trash_sync.entity.drift.dart';
import 'package:immich_mobile/infrastructure/repositories/db.repository.dart';
import 'package:immich_mobile/infrastructure/repositories/local_asset.repository.dart';
import 'package:immich_mobile/repositories/asset_media.repository.dart';
import 'package:logging/logging.dart';

enum TrashSyncMode { off, autoSync, review }

typedef RemoteTrashResolveResult = ({int displayCount, bool success});

class TrashSyncCandidate {
  final String localAssetId;
  final String? checksum;
  final DateTime? remoteDeletedAt;
  final TrashTriggerSource triggerSource;
  final String name;
  final AssetType type;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int? width;
  final int? height;
  final int? durationMs;
  final bool isFavorite;
  final int orientation;
  final AssetPlaybackStyle playbackStyle;

  const TrashSyncCandidate({
    required this.localAssetId,
    required this.checksum,
    required this.remoteDeletedAt,
    required this.triggerSource,
    required this.name,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
    required this.width,
    required this.height,
    required this.durationMs,
    required this.isFavorite,
    required this.orientation,
    required this.playbackStyle,
  });
}

class DriftTrashSyncRepository extends DriftDatabaseRepository {
  final Logger _logger = Logger('DriftTrashSyncRepository');

  final Drift _db;
  final DriftLocalAssetRepository _localAssetRepository;
  final AssetMediaRepository _assetMediaRepository;

  DriftTrashSyncRepository(this._db, this._localAssetRepository, this._assetMediaRepository) : super(_db);

  TrashSyncMode get mode {
    if (Store.get(StoreKey.reviewOutOfSyncChangesAndroid, false)) {
      return TrashSyncMode.review;
    }
    if (Store.get(StoreKey.manageLocalMediaAndroid, false)) {
      return TrashSyncMode.autoSync;
    }
    return TrashSyncMode.off;
  }

  Future<void> recordRemoteTrash(Map<String, DateTime> remoteDeletedAtByRemoteId) async {
    if (remoteDeletedAtByRemoteId.isEmpty) {
      return;
    }
    final currentMode = mode;
    if (currentMode == TrashSyncMode.off) {
      return;
    }

    final candidates = await _localAssetRepository.getRemoteTrashCandidates(remoteDeletedAtByRemoteId);
    if (candidates.isEmpty) {
      _logger.fine('No local assets matched remote-delete batch of ${remoteDeletedAtByRemoteId.length}');
      return;
    }

    final newCandidates = candidates.map(_candidateFrom).toList();

    if (currentMode == TrashSyncMode.autoSync && await _canMoveLocalMediaToTrash()) {
      final ids = candidates.map((c) => c.asset.id).toList();
      _logger.info('Auto-trashing ${ids.length} local assets');
      final movedIds = (await _assetMediaRepository.deleteAll(ids)).toSet();

      await upsertCandidates(newCandidates);
      if (movedIds.isNotEmpty) {
        await markDecision(movedIds, TrashStateDecision.appTrashed);
      }
      return;
    }

    await upsertCandidates(newCandidates);
  }

  Future<void> recheckRemoteTrashCandidates() async {
    if (mode == TrashSyncMode.off) {
      return;
    }
    final deleted = await _localAssetRepository.getRemotelyDeletedRemoteIds();
    if (deleted.isEmpty) {
      return;
    }
    await recordRemoteTrash(deleted);
  }

  Future<void> recordRemoteRestore(Iterable<String> aliveRemoteChecksums) async {
    final affected = await deleteForRestoredRemotes(aliveRemoteChecksums);
    if (affected.isEmpty || mode != TrashSyncMode.autoSync) {
      return;
    }

    final wereAppTrashed = affected.where((r) => r.decision == TrashStateDecision.appTrashed).toList();
    if (wereAppTrashed.isEmpty) {
      return;
    }

    if (!CurrentPlatform.isAndroid || !await _hasManageMediaPermission('restore from trash')) {
      return;
    }

    final localAssets = wereAppTrashed.map((r) => r.toLocalAsset()).toList();
    await _assetMediaRepository.restoreAssetsFromTrash(localAssets);
  }

  Future<void> syncRestoresForRevivedAssets() async {
    if (mode != TrashSyncMode.autoSync) {
      return;
    }
    if (!CurrentPlatform.isAndroid) {
      return;
    }
    if (!await _hasManageMediaPermission('restore from trash')) {
      return;
    }

    final rows = await getAppTrashedRemotelyRestored();
    if (rows.isEmpty) {
      return;
    }

    final localAssets = rows.map((r) => r.toLocalAsset()).toList();
    final restoredIds = await _assetMediaRepository.restoreAssetsFromTrash(localAssets);
    if (restoredIds.isEmpty) {
      return;
    }

    await deleteByAssetIds(restoredIds);
  }

  Future<RemoteTrashResolveResult> applyReviewDecision(Iterable<String> localAssetIds, {required bool keep}) async {
    final ids = localAssetIds.toSet();
    if (ids.isEmpty) {
      return (displayCount: 0, success: true);
    }

    if (keep) {
      await markDecision(ids, TrashStateDecision.kept);
      return (displayCount: ids.length, success: true);
    }

    final movedIds = (await _assetMediaRepository.deleteAll(ids.toList())).toSet();
    if (movedIds.isEmpty) {
      return (displayCount: 0, success: false);
    }
    await markDecision(movedIds, TrashStateDecision.appTrashed);
    return (displayCount: movedIds.length, success: movedIds.length == ids.length);
  }

  Future<void> recordUserManualTrash(Iterable<String> localAssetIds) async {
    final ids = localAssetIds.toSet();
    if (ids.isEmpty) {
      return;
    }
    final snapshots = await _localAssetRepository.getByIds(ids);
    if (snapshots.isEmpty) {
      return;
    }
    final manualCandidates = snapshots
        .map(
          (a) => TrashSyncCandidate(
            localAssetId: a.id,
            checksum: a.checksum,
            remoteDeletedAt: null,
            triggerSource: TrashTriggerSource.localUser,
            name: a.name,
            type: a.type,
            createdAt: a.createdAt,
            updatedAt: a.updatedAt,
            width: a.width,
            height: a.height,
            durationMs: a.durationMs,
            isFavorite: a.isFavorite,
            orientation: a.orientation,
            playbackStyle: a.playbackStyle,
          ),
        )
        .toList();
    await upsertCandidates(manualCandidates);
    await markDecision(ids, TrashStateDecision.appTrashed);
  }

  TrashSyncCandidate _candidateFrom(RemoteDeletedLocalAsset candidate) {
    final asset = candidate.asset;
    return TrashSyncCandidate(
      localAssetId: asset.id,
      checksum: asset.checksum,
      remoteDeletedAt: candidate.remoteDeletedAt,
      triggerSource: TrashTriggerSource.remoteSync,
      name: asset.name,
      type: asset.type,
      createdAt: asset.createdAt,
      updatedAt: asset.updatedAt,
      width: asset.width,
      height: asset.height,
      durationMs: asset.durationMs,
      isFavorite: asset.isFavorite,
      orientation: asset.orientation,
      playbackStyle: asset.playbackStyle,
    );
  }

  Future<bool> _canMoveLocalMediaToTrash() async {
    if (CurrentPlatform.isAndroid) {
      return await _hasManageMediaPermission('move to trash');
    }
    return true;
  }

  Future<bool> _hasManageMediaPermission(String logContext) async {
    if (!CurrentPlatform.isAndroid) {
      return true;
    }
    final hasPermission = await _assetMediaRepository.hasManageMediaPermission();
    if (!hasPermission) {
      _logger.warning('$logContext blocked: MANAGE_MEDIA permission missing');
    }
    return hasPermission;
  }

  Future<void> upsertCandidates(Iterable<TrashSyncCandidate> candidates) async {
    if (candidates.isEmpty) {
      return;
    }

    return _db.batch((batch) {
      for (final c in candidates) {
        batch.insert(
          _db.trashSyncEntity,
          TrashSyncEntityCompanion.insert(
            id: c.localAssetId,
            checksum: Value(c.checksum),
            decision: TrashStateDecision.pendingReview,
            triggerSource: c.triggerSource,
            remoteDeletedAt: Value(c.remoteDeletedAt),
            name: c.name,
            type: c.type,
            createdAt: Value(c.createdAt),
            updatedAt: Value(c.updatedAt),
            width: Value(c.width),
            height: Value(c.height),
            durationMs: Value(c.durationMs),
            isFavorite: Value(c.isFavorite),
            orientation: Value(c.orientation),
            playbackStyle: Value(c.playbackStyle),
          ),
          mode: InsertMode.insertOrIgnore,
        );
      }
    });
  }

  Future<void> markDecision(Iterable<String> localAssetIds, TrashStateDecision decision) {
    assert(decision != TrashStateDecision.pendingReview, 'Use upsertCandidates for pending rows');
    final ids = localAssetIds.toSet();
    if (ids.isEmpty) {
      return Future.value();
    }

    return _db.batch((batch) {
      for (final slice in ids.slices(kDriftMaxChunk)) {
        batch.update(
          _db.trashSyncEntity,
          TrashSyncEntityCompanion(decision: Value(decision), decidedAt: Value(DateTime.now())),
          where: (tbl) => tbl.id.isIn(slice),
        );
      }
    });
  }

  Future<List<TrashSyncEntityData>> deleteForRestoredRemotes(Iterable<String> remoteAliveChecksums) {
    final checksums = remoteAliveChecksums.toSet();
    if (checksums.isEmpty) {
      return Future.value(const []);
    }

    return _db.transaction(() async {
      final affected = <TrashSyncEntityData>[];
      for (final slice in checksums.slices(kDriftMaxChunk)) {
        final rows = await (_db.select(
          _db.trashSyncEntity,
        )..where((t) => t.checksum.isIn(slice) & t.triggerSource.equalsValue(TrashTriggerSource.remoteSync))).get();
        affected.addAll(rows);
      }
      for (final slice in checksums.slices(kDriftMaxChunk)) {
        await (_db.delete(
          _db.trashSyncEntity,
        )..where((t) => t.checksum.isIn(slice) & t.triggerSource.equalsValue(TrashTriggerSource.remoteSync))).go();
      }
      return affected;
    });
  }

  Future<void> deleteByAssetIds(Iterable<String> localAssetIds) {
    final ids = localAssetIds.toSet();
    if (ids.isEmpty) {
      return Future.value();
    }

    return _db.batch((batch) {
      for (final slice in ids.slices(kDriftMaxChunk)) {
        batch.deleteWhere(_db.trashSyncEntity, (t) => t.id.isIn(slice));
      }
    });
  }

  Future<List<TrashSyncEntityData>> getAppTrashedRemotelyRestored() async {
    final selectedTrashedAlbums =
        _db.trashedLocalAssetEntity.selectOnly().join([
            innerJoin(
              _db.localAlbumEntity,
              _db.trashedLocalAssetEntity.albumId.equalsExp(_db.localAlbumEntity.id),
              useColumns: false,
            ),
          ])
          ..addColumns([_db.trashedLocalAssetEntity.id])
          ..where(
            _db.trashedLocalAssetEntity.id.equalsExp(_db.trashSyncEntity.id) &
                _db.localAlbumEntity.backupSelection.equalsValue(BackupSelection.selected),
          );

    final rows =
        await (_db.select(_db.trashSyncEntity).join([
              innerJoin(_db.remoteAssetEntity, _db.remoteAssetEntity.checksum.equalsExp(_db.trashSyncEntity.checksum)),
            ])..where(
              _db.trashSyncEntity.decision.equalsValue(TrashStateDecision.appTrashed) &
                  _db.trashSyncEntity.triggerSource.equalsValue(TrashTriggerSource.remoteSync) &
                  _db.remoteAssetEntity.deletedAt.isNull() &
                  existsQuery(selectedTrashedAlbums),
            ))
            .get();

    return rows.map((r) => r.readTable(_db.trashSyncEntity)).toList();
  }

  Future<Set<String>> getAppTrashedAssetIds() async {
    final rows =
        await (_db.selectOnly(_db.trashSyncEntity)
              ..addColumns([_db.trashSyncEntity.id])
              ..where(_db.trashSyncEntity.decision.equalsValue(TrashStateDecision.appTrashed)))
            .get();
    return rows.map((r) => r.read(_db.trashSyncEntity.id)!).toSet();
  }

  Stream<int> watchPendingReviewCount() {
    final countExpr = _db.trashSyncEntity.id.count();

    final q = _db.selectOnly(_db.trashSyncEntity)
      ..addColumns([countExpr])
      ..where(
        _db.trashSyncEntity.decision.equalsValue(TrashStateDecision.pendingReview) &
            _isLocalAssetInBackupSelectedAlbum(),
      );

    return q.watchSingle().map((row) => row.read(countExpr) ?? 0).distinct();
  }

  Stream<bool> watchIsAssetPendingById(String localAssetId) {
    final q = _db.selectOnly(_db.trashSyncEntity)
      ..addColumns([_db.trashSyncEntity.id])
      ..where(
        _db.trashSyncEntity.id.equals(localAssetId) &
            _db.trashSyncEntity.decision.equalsValue(TrashStateDecision.pendingReview) &
            _isLocalAssetInBackupSelectedAlbum(),
      )
      ..limit(1);
    return q.watchSingleOrNull().map((row) => row != null).distinct();
  }

  Stream<bool> watchIsAssetPendingByChecksum(String checksum) {
    final q = _db.selectOnly(_db.trashSyncEntity)
      ..addColumns([_db.trashSyncEntity.id])
      ..where(
        _db.trashSyncEntity.checksum.equals(checksum) &
            _db.trashSyncEntity.decision.equalsValue(TrashStateDecision.pendingReview) &
            _isLocalAssetInBackupSelectedAlbum(),
      )
      ..limit(1);
    return q.watchSingleOrNull().map((row) => row != null).distinct();
  }

  Expression<bool> _isLocalAssetInBackupSelectedAlbum() {
    final selectedAlbumQ =
        _db.localAlbumAssetEntity.selectOnly().join([
            innerJoin(
              _db.localAlbumEntity,
              _db.localAlbumAssetEntity.albumId.equalsExp(_db.localAlbumEntity.id),
              useColumns: false,
            ),
          ])
          ..addColumns([_db.localAlbumAssetEntity.assetId])
          ..where(
            _db.localAlbumAssetEntity.assetId.equalsExp(_db.trashSyncEntity.id) &
                _db.localAlbumEntity.backupSelection.equalsValue(BackupSelection.selected),
          );
    return existsQuery(selectedAlbumQ);
  }

  Future<int> cleanup() async {
    return _db.transaction(() async {
      final aliveChecksums = _db.selectOnly(_db.remoteAssetEntity)
        ..addColumns([_db.remoteAssetEntity.checksum])
        ..where(_db.remoteAssetEntity.deletedAt.isNull());
      final rule1 = await (_db.delete(_db.trashSyncEntity)..where((t) => t.checksum.isInQuery(aliveChecksums))).go();

      final liveLocalIds = _db.selectOnly(_db.localAssetEntity)..addColumns([_db.localAssetEntity.id]);
      final rule2 =
          await (_db.delete(_db.trashSyncEntity)..where(
                (t) => t.id.isNotInQuery(liveLocalIds) & t.decision.equalsValue(TrashStateDecision.appTrashed).not(),
              ))
              .go();

      return rule1 + rule2;
    });
  }
}

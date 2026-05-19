import 'package:drift/drift.dart';
import 'package:immich_mobile/domain/models/asset/base_asset.model.dart';
import 'package:immich_mobile/infrastructure/entities/local_asset.entity.dart';
import 'package:immich_mobile/infrastructure/entities/trash_sync.entity.drift.dart';

enum TrashStateDecision {
  // do not change this order!
  pendingReview,
  kept,
  appTrashed,
}

enum TrashTriggerSource {
  // do not change this order!
  remoteSync,
  localUser,
}

@TableIndex.sql('CREATE INDEX IF NOT EXISTS idx_trash_sync_decision ON trash_sync_entity (decision)')
@TableIndex.sql('CREATE INDEX IF NOT EXISTS idx_trash_sync_checksum ON trash_sync_entity (checksum)')
class TrashSyncEntity extends LocalAssetEntity {
  const TrashSyncEntity();

  IntColumn get decision => intEnum<TrashStateDecision>()();

  IntColumn get triggerSource => intEnum<TrashTriggerSource>()();

  DateTimeColumn get remoteDeletedAt => dateTime().nullable()();

  DateTimeColumn get decidedAt => dateTime().withDefault(currentDateAndTime)();
}

extension TrashSyncEntityDataDomainExtension on TrashSyncEntityData {
  LocalAsset toLocalAsset() => LocalAsset(
    id: id,
    name: name,
    checksum: checksum,
    type: type,
    createdAt: createdAt,
    updatedAt: updatedAt,
    durationMs: durationMs,
    isFavorite: isFavorite,
    height: height,
    width: width,
    orientation: orientation,
    playbackStyle: playbackStyle,
    adjustmentTime: adjustmentTime,
    latitude: latitude,
    longitude: longitude,
    cloudId: iCloudId,
  );
}

// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:immich_mobile/infrastructure/entities/trash_sync.entity.drift.dart'
    as i1;
import 'package:immich_mobile/domain/models/asset/base_asset.model.dart' as i2;
import 'package:immich_mobile/infrastructure/entities/trash_sync.entity.dart'
    as i3;
import 'package:drift/src/runtime/query_builder/query_builder.dart' as i4;

typedef $$TrashSyncEntityTableCreateCompanionBuilder =
    i1.TrashSyncEntityCompanion Function({
      required String id,
      i0.Value<String?> checksum,
      i0.Value<bool> isFavorite,
      i0.Value<int> orientation,
      i0.Value<String?> iCloudId,
      i0.Value<DateTime?> adjustmentTime,
      i0.Value<double?> latitude,
      i0.Value<double?> longitude,
      i0.Value<i2.AssetPlaybackStyle> playbackStyle,
      required String name,
      required i2.AssetType type,
      i0.Value<DateTime> createdAt,
      i0.Value<DateTime> updatedAt,
      i0.Value<int?> width,
      i0.Value<int?> height,
      i0.Value<int?> durationMs,
      required i3.TrashStateDecision decision,
      required i3.TrashTriggerSource triggerSource,
      i0.Value<DateTime?> remoteDeletedAt,
      i0.Value<DateTime> decidedAt,
    });
typedef $$TrashSyncEntityTableUpdateCompanionBuilder =
    i1.TrashSyncEntityCompanion Function({
      i0.Value<String> id,
      i0.Value<String?> checksum,
      i0.Value<bool> isFavorite,
      i0.Value<int> orientation,
      i0.Value<String?> iCloudId,
      i0.Value<DateTime?> adjustmentTime,
      i0.Value<double?> latitude,
      i0.Value<double?> longitude,
      i0.Value<i2.AssetPlaybackStyle> playbackStyle,
      i0.Value<String> name,
      i0.Value<i2.AssetType> type,
      i0.Value<DateTime> createdAt,
      i0.Value<DateTime> updatedAt,
      i0.Value<int?> width,
      i0.Value<int?> height,
      i0.Value<int?> durationMs,
      i0.Value<i3.TrashStateDecision> decision,
      i0.Value<i3.TrashTriggerSource> triggerSource,
      i0.Value<DateTime?> remoteDeletedAt,
      i0.Value<DateTime> decidedAt,
    });

class $$TrashSyncEntityTableFilterComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.$TrashSyncEntityTable> {
  $$TrashSyncEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnFilters<String> get checksum => $composableBuilder(
    column: $table.checksum,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnFilters<bool> get isFavorite => $composableBuilder(
    column: $table.isFavorite,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnFilters<int> get orientation => $composableBuilder(
    column: $table.orientation,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnFilters<String> get iCloudId => $composableBuilder(
    column: $table.iCloudId,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnFilters<DateTime> get adjustmentTime => $composableBuilder(
    column: $table.adjustmentTime,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnFilters<double> get latitude => $composableBuilder(
    column: $table.latitude,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnFilters<double> get longitude => $composableBuilder(
    column: $table.longitude,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnWithTypeConverterFilters<
    i2.AssetPlaybackStyle,
    i2.AssetPlaybackStyle,
    int
  >
  get playbackStyle => $composableBuilder(
    column: $table.playbackStyle,
    builder: (column) => i0.ColumnWithTypeConverterFilters(column),
  );

  i0.ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnWithTypeConverterFilters<i2.AssetType, i2.AssetType, int> get type =>
      $composableBuilder(
        column: $table.type,
        builder: (column) => i0.ColumnWithTypeConverterFilters(column),
      );

  i0.ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnFilters<int> get width => $composableBuilder(
    column: $table.width,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnFilters<int> get height => $composableBuilder(
    column: $table.height,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnFilters<int> get durationMs => $composableBuilder(
    column: $table.durationMs,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnWithTypeConverterFilters<
    i3.TrashStateDecision,
    i3.TrashStateDecision,
    int
  >
  get decision => $composableBuilder(
    column: $table.decision,
    builder: (column) => i0.ColumnWithTypeConverterFilters(column),
  );

  i0.ColumnWithTypeConverterFilters<
    i3.TrashTriggerSource,
    i3.TrashTriggerSource,
    int
  >
  get triggerSource => $composableBuilder(
    column: $table.triggerSource,
    builder: (column) => i0.ColumnWithTypeConverterFilters(column),
  );

  i0.ColumnFilters<DateTime> get remoteDeletedAt => $composableBuilder(
    column: $table.remoteDeletedAt,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnFilters<DateTime> get decidedAt => $composableBuilder(
    column: $table.decidedAt,
    builder: (column) => i0.ColumnFilters(column),
  );
}

class $$TrashSyncEntityTableOrderingComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.$TrashSyncEntityTable> {
  $$TrashSyncEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<String> get checksum => $composableBuilder(
    column: $table.checksum,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<bool> get isFavorite => $composableBuilder(
    column: $table.isFavorite,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<int> get orientation => $composableBuilder(
    column: $table.orientation,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<String> get iCloudId => $composableBuilder(
    column: $table.iCloudId,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<DateTime> get adjustmentTime => $composableBuilder(
    column: $table.adjustmentTime,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<double> get latitude => $composableBuilder(
    column: $table.latitude,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<double> get longitude => $composableBuilder(
    column: $table.longitude,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<int> get playbackStyle => $composableBuilder(
    column: $table.playbackStyle,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<int> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<int> get width => $composableBuilder(
    column: $table.width,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<int> get height => $composableBuilder(
    column: $table.height,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<int> get durationMs => $composableBuilder(
    column: $table.durationMs,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<int> get decision => $composableBuilder(
    column: $table.decision,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<int> get triggerSource => $composableBuilder(
    column: $table.triggerSource,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<DateTime> get remoteDeletedAt => $composableBuilder(
    column: $table.remoteDeletedAt,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<DateTime> get decidedAt => $composableBuilder(
    column: $table.decidedAt,
    builder: (column) => i0.ColumnOrderings(column),
  );
}

class $$TrashSyncEntityTableAnnotationComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.$TrashSyncEntityTable> {
  $$TrashSyncEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  i0.GeneratedColumn<String> get checksum =>
      $composableBuilder(column: $table.checksum, builder: (column) => column);

  i0.GeneratedColumn<bool> get isFavorite => $composableBuilder(
    column: $table.isFavorite,
    builder: (column) => column,
  );

  i0.GeneratedColumn<int> get orientation => $composableBuilder(
    column: $table.orientation,
    builder: (column) => column,
  );

  i0.GeneratedColumn<String> get iCloudId =>
      $composableBuilder(column: $table.iCloudId, builder: (column) => column);

  i0.GeneratedColumn<DateTime> get adjustmentTime => $composableBuilder(
    column: $table.adjustmentTime,
    builder: (column) => column,
  );

  i0.GeneratedColumn<double> get latitude =>
      $composableBuilder(column: $table.latitude, builder: (column) => column);

  i0.GeneratedColumn<double> get longitude =>
      $composableBuilder(column: $table.longitude, builder: (column) => column);

  i0.GeneratedColumnWithTypeConverter<i2.AssetPlaybackStyle, int>
  get playbackStyle => $composableBuilder(
    column: $table.playbackStyle,
    builder: (column) => column,
  );

  i0.GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  i0.GeneratedColumnWithTypeConverter<i2.AssetType, int> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  i0.GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  i0.GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  i0.GeneratedColumn<int> get width =>
      $composableBuilder(column: $table.width, builder: (column) => column);

  i0.GeneratedColumn<int> get height =>
      $composableBuilder(column: $table.height, builder: (column) => column);

  i0.GeneratedColumn<int> get durationMs => $composableBuilder(
    column: $table.durationMs,
    builder: (column) => column,
  );

  i0.GeneratedColumnWithTypeConverter<i3.TrashStateDecision, int>
  get decision =>
      $composableBuilder(column: $table.decision, builder: (column) => column);

  i0.GeneratedColumnWithTypeConverter<i3.TrashTriggerSource, int>
  get triggerSource => $composableBuilder(
    column: $table.triggerSource,
    builder: (column) => column,
  );

  i0.GeneratedColumn<DateTime> get remoteDeletedAt => $composableBuilder(
    column: $table.remoteDeletedAt,
    builder: (column) => column,
  );

  i0.GeneratedColumn<DateTime> get decidedAt =>
      $composableBuilder(column: $table.decidedAt, builder: (column) => column);
}

class $$TrashSyncEntityTableTableManager
    extends
        i0.RootTableManager<
          i0.GeneratedDatabase,
          i1.$TrashSyncEntityTable,
          i1.TrashSyncEntityData,
          i1.$$TrashSyncEntityTableFilterComposer,
          i1.$$TrashSyncEntityTableOrderingComposer,
          i1.$$TrashSyncEntityTableAnnotationComposer,
          $$TrashSyncEntityTableCreateCompanionBuilder,
          $$TrashSyncEntityTableUpdateCompanionBuilder,
          (
            i1.TrashSyncEntityData,
            i0.BaseReferences<
              i0.GeneratedDatabase,
              i1.$TrashSyncEntityTable,
              i1.TrashSyncEntityData
            >,
          ),
          i1.TrashSyncEntityData,
          i0.PrefetchHooks Function()
        > {
  $$TrashSyncEntityTableTableManager(
    i0.GeneratedDatabase db,
    i1.$TrashSyncEntityTable table,
  ) : super(
        i0.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              i1.$$TrashSyncEntityTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              i1.$$TrashSyncEntityTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () => i1
              .$$TrashSyncEntityTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                i0.Value<String> id = const i0.Value.absent(),
                i0.Value<String?> checksum = const i0.Value.absent(),
                i0.Value<bool> isFavorite = const i0.Value.absent(),
                i0.Value<int> orientation = const i0.Value.absent(),
                i0.Value<String?> iCloudId = const i0.Value.absent(),
                i0.Value<DateTime?> adjustmentTime = const i0.Value.absent(),
                i0.Value<double?> latitude = const i0.Value.absent(),
                i0.Value<double?> longitude = const i0.Value.absent(),
                i0.Value<i2.AssetPlaybackStyle> playbackStyle =
                    const i0.Value.absent(),
                i0.Value<String> name = const i0.Value.absent(),
                i0.Value<i2.AssetType> type = const i0.Value.absent(),
                i0.Value<DateTime> createdAt = const i0.Value.absent(),
                i0.Value<DateTime> updatedAt = const i0.Value.absent(),
                i0.Value<int?> width = const i0.Value.absent(),
                i0.Value<int?> height = const i0.Value.absent(),
                i0.Value<int?> durationMs = const i0.Value.absent(),
                i0.Value<i3.TrashStateDecision> decision =
                    const i0.Value.absent(),
                i0.Value<i3.TrashTriggerSource> triggerSource =
                    const i0.Value.absent(),
                i0.Value<DateTime?> remoteDeletedAt = const i0.Value.absent(),
                i0.Value<DateTime> decidedAt = const i0.Value.absent(),
              }) => i1.TrashSyncEntityCompanion(
                id: id,
                checksum: checksum,
                isFavorite: isFavorite,
                orientation: orientation,
                iCloudId: iCloudId,
                adjustmentTime: adjustmentTime,
                latitude: latitude,
                longitude: longitude,
                playbackStyle: playbackStyle,
                name: name,
                type: type,
                createdAt: createdAt,
                updatedAt: updatedAt,
                width: width,
                height: height,
                durationMs: durationMs,
                decision: decision,
                triggerSource: triggerSource,
                remoteDeletedAt: remoteDeletedAt,
                decidedAt: decidedAt,
              ),
          createCompanionCallback:
              ({
                required String id,
                i0.Value<String?> checksum = const i0.Value.absent(),
                i0.Value<bool> isFavorite = const i0.Value.absent(),
                i0.Value<int> orientation = const i0.Value.absent(),
                i0.Value<String?> iCloudId = const i0.Value.absent(),
                i0.Value<DateTime?> adjustmentTime = const i0.Value.absent(),
                i0.Value<double?> latitude = const i0.Value.absent(),
                i0.Value<double?> longitude = const i0.Value.absent(),
                i0.Value<i2.AssetPlaybackStyle> playbackStyle =
                    const i0.Value.absent(),
                required String name,
                required i2.AssetType type,
                i0.Value<DateTime> createdAt = const i0.Value.absent(),
                i0.Value<DateTime> updatedAt = const i0.Value.absent(),
                i0.Value<int?> width = const i0.Value.absent(),
                i0.Value<int?> height = const i0.Value.absent(),
                i0.Value<int?> durationMs = const i0.Value.absent(),
                required i3.TrashStateDecision decision,
                required i3.TrashTriggerSource triggerSource,
                i0.Value<DateTime?> remoteDeletedAt = const i0.Value.absent(),
                i0.Value<DateTime> decidedAt = const i0.Value.absent(),
              }) => i1.TrashSyncEntityCompanion.insert(
                id: id,
                checksum: checksum,
                isFavorite: isFavorite,
                orientation: orientation,
                iCloudId: iCloudId,
                adjustmentTime: adjustmentTime,
                latitude: latitude,
                longitude: longitude,
                playbackStyle: playbackStyle,
                name: name,
                type: type,
                createdAt: createdAt,
                updatedAt: updatedAt,
                width: width,
                height: height,
                durationMs: durationMs,
                decision: decision,
                triggerSource: triggerSource,
                remoteDeletedAt: remoteDeletedAt,
                decidedAt: decidedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), i0.BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TrashSyncEntityTableProcessedTableManager =
    i0.ProcessedTableManager<
      i0.GeneratedDatabase,
      i1.$TrashSyncEntityTable,
      i1.TrashSyncEntityData,
      i1.$$TrashSyncEntityTableFilterComposer,
      i1.$$TrashSyncEntityTableOrderingComposer,
      i1.$$TrashSyncEntityTableAnnotationComposer,
      $$TrashSyncEntityTableCreateCompanionBuilder,
      $$TrashSyncEntityTableUpdateCompanionBuilder,
      (
        i1.TrashSyncEntityData,
        i0.BaseReferences<
          i0.GeneratedDatabase,
          i1.$TrashSyncEntityTable,
          i1.TrashSyncEntityData
        >,
      ),
      i1.TrashSyncEntityData,
      i0.PrefetchHooks Function()
    >;
i0.Index get idxTrashSyncDecision => i0.Index(
  'idx_trash_sync_decision',
  'CREATE INDEX IF NOT EXISTS idx_trash_sync_decision ON trash_sync_entity (decision)',
);

class $TrashSyncEntityTable extends i3.TrashSyncEntity
    with i0.TableInfo<$TrashSyncEntityTable, i1.TrashSyncEntityData> {
  @override
  final i0.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TrashSyncEntityTable(this.attachedDatabase, [this._alias]);
  static const i0.VerificationMeta _idMeta = const i0.VerificationMeta('id');
  @override
  late final i0.GeneratedColumn<String> id = i0.GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: i0.DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const i0.VerificationMeta _checksumMeta = const i0.VerificationMeta(
    'checksum',
  );
  @override
  late final i0.GeneratedColumn<String> checksum = i0.GeneratedColumn<String>(
    'checksum',
    aliasedName,
    true,
    type: i0.DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const i0.VerificationMeta _isFavoriteMeta = const i0.VerificationMeta(
    'isFavorite',
  );
  @override
  late final i0.GeneratedColumn<bool> isFavorite = i0.GeneratedColumn<bool>(
    'is_favorite',
    aliasedName,
    false,
    type: i0.DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: i0.GeneratedColumn.constraintIsAlways(
      'CHECK ("is_favorite" IN (0, 1))',
    ),
    defaultValue: const i4.Constant(false),
  );
  static const i0.VerificationMeta _orientationMeta = const i0.VerificationMeta(
    'orientation',
  );
  @override
  late final i0.GeneratedColumn<int> orientation = i0.GeneratedColumn<int>(
    'orientation',
    aliasedName,
    false,
    type: i0.DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const i4.Constant(0),
  );
  static const i0.VerificationMeta _iCloudIdMeta = const i0.VerificationMeta(
    'iCloudId',
  );
  @override
  late final i0.GeneratedColumn<String> iCloudId = i0.GeneratedColumn<String>(
    'i_cloud_id',
    aliasedName,
    true,
    type: i0.DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const i0.VerificationMeta _adjustmentTimeMeta =
      const i0.VerificationMeta('adjustmentTime');
  @override
  late final i0.GeneratedColumn<DateTime> adjustmentTime =
      i0.GeneratedColumn<DateTime>(
        'adjustment_time',
        aliasedName,
        true,
        type: i0.DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const i0.VerificationMeta _latitudeMeta = const i0.VerificationMeta(
    'latitude',
  );
  @override
  late final i0.GeneratedColumn<double> latitude = i0.GeneratedColumn<double>(
    'latitude',
    aliasedName,
    true,
    type: i0.DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const i0.VerificationMeta _longitudeMeta = const i0.VerificationMeta(
    'longitude',
  );
  @override
  late final i0.GeneratedColumn<double> longitude = i0.GeneratedColumn<double>(
    'longitude',
    aliasedName,
    true,
    type: i0.DriftSqlType.double,
    requiredDuringInsert: false,
  );
  @override
  late final i0.GeneratedColumnWithTypeConverter<i2.AssetPlaybackStyle, int>
  playbackStyle =
      i0.GeneratedColumn<int>(
        'playback_style',
        aliasedName,
        false,
        type: i0.DriftSqlType.int,
        requiredDuringInsert: false,
        defaultValue: const i4.Constant(0),
      ).withConverter<i2.AssetPlaybackStyle>(
        i1.$TrashSyncEntityTable.$converterplaybackStyle,
      );
  static const i0.VerificationMeta _nameMeta = const i0.VerificationMeta(
    'name',
  );
  @override
  late final i0.GeneratedColumn<String> name = i0.GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: i0.DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  late final i0.GeneratedColumnWithTypeConverter<i2.AssetType, int> type =
      i0.GeneratedColumn<int>(
        'type',
        aliasedName,
        false,
        type: i0.DriftSqlType.int,
        requiredDuringInsert: true,
      ).withConverter<i2.AssetType>(i1.$TrashSyncEntityTable.$convertertype);
  static const i0.VerificationMeta _createdAtMeta = const i0.VerificationMeta(
    'createdAt',
  );
  @override
  late final i0.GeneratedColumn<DateTime> createdAt =
      i0.GeneratedColumn<DateTime>(
        'created_at',
        aliasedName,
        false,
        type: i0.DriftSqlType.dateTime,
        requiredDuringInsert: false,
        defaultValue: i4.currentDateAndTime,
      );
  static const i0.VerificationMeta _updatedAtMeta = const i0.VerificationMeta(
    'updatedAt',
  );
  @override
  late final i0.GeneratedColumn<DateTime> updatedAt =
      i0.GeneratedColumn<DateTime>(
        'updated_at',
        aliasedName,
        false,
        type: i0.DriftSqlType.dateTime,
        requiredDuringInsert: false,
        defaultValue: i4.currentDateAndTime,
      );
  static const i0.VerificationMeta _widthMeta = const i0.VerificationMeta(
    'width',
  );
  @override
  late final i0.GeneratedColumn<int> width = i0.GeneratedColumn<int>(
    'width',
    aliasedName,
    true,
    type: i0.DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const i0.VerificationMeta _heightMeta = const i0.VerificationMeta(
    'height',
  );
  @override
  late final i0.GeneratedColumn<int> height = i0.GeneratedColumn<int>(
    'height',
    aliasedName,
    true,
    type: i0.DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const i0.VerificationMeta _durationMsMeta = const i0.VerificationMeta(
    'durationMs',
  );
  @override
  late final i0.GeneratedColumn<int> durationMs = i0.GeneratedColumn<int>(
    'duration_ms',
    aliasedName,
    true,
    type: i0.DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  late final i0.GeneratedColumnWithTypeConverter<i3.TrashStateDecision, int>
  decision =
      i0.GeneratedColumn<int>(
        'decision',
        aliasedName,
        false,
        type: i0.DriftSqlType.int,
        requiredDuringInsert: true,
      ).withConverter<i3.TrashStateDecision>(
        i1.$TrashSyncEntityTable.$converterdecision,
      );
  @override
  late final i0.GeneratedColumnWithTypeConverter<i3.TrashTriggerSource, int>
  triggerSource =
      i0.GeneratedColumn<int>(
        'trigger_source',
        aliasedName,
        false,
        type: i0.DriftSqlType.int,
        requiredDuringInsert: true,
      ).withConverter<i3.TrashTriggerSource>(
        i1.$TrashSyncEntityTable.$convertertriggerSource,
      );
  static const i0.VerificationMeta _remoteDeletedAtMeta =
      const i0.VerificationMeta('remoteDeletedAt');
  @override
  late final i0.GeneratedColumn<DateTime> remoteDeletedAt =
      i0.GeneratedColumn<DateTime>(
        'remote_deleted_at',
        aliasedName,
        true,
        type: i0.DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const i0.VerificationMeta _decidedAtMeta = const i0.VerificationMeta(
    'decidedAt',
  );
  @override
  late final i0.GeneratedColumn<DateTime> decidedAt =
      i0.GeneratedColumn<DateTime>(
        'decided_at',
        aliasedName,
        false,
        type: i0.DriftSqlType.dateTime,
        requiredDuringInsert: false,
        defaultValue: i4.currentDateAndTime,
      );
  @override
  List<i0.GeneratedColumn> get $columns => [
    id,
    checksum,
    isFavorite,
    orientation,
    iCloudId,
    adjustmentTime,
    latitude,
    longitude,
    playbackStyle,
    name,
    type,
    createdAt,
    updatedAt,
    width,
    height,
    durationMs,
    decision,
    triggerSource,
    remoteDeletedAt,
    decidedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'trash_sync_entity';
  @override
  i0.VerificationContext validateIntegrity(
    i0.Insertable<i1.TrashSyncEntityData> instance, {
    bool isInserting = false,
  }) {
    final context = i0.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('checksum')) {
      context.handle(
        _checksumMeta,
        checksum.isAcceptableOrUnknown(data['checksum']!, _checksumMeta),
      );
    }
    if (data.containsKey('is_favorite')) {
      context.handle(
        _isFavoriteMeta,
        isFavorite.isAcceptableOrUnknown(data['is_favorite']!, _isFavoriteMeta),
      );
    }
    if (data.containsKey('orientation')) {
      context.handle(
        _orientationMeta,
        orientation.isAcceptableOrUnknown(
          data['orientation']!,
          _orientationMeta,
        ),
      );
    }
    if (data.containsKey('i_cloud_id')) {
      context.handle(
        _iCloudIdMeta,
        iCloudId.isAcceptableOrUnknown(data['i_cloud_id']!, _iCloudIdMeta),
      );
    }
    if (data.containsKey('adjustment_time')) {
      context.handle(
        _adjustmentTimeMeta,
        adjustmentTime.isAcceptableOrUnknown(
          data['adjustment_time']!,
          _adjustmentTimeMeta,
        ),
      );
    }
    if (data.containsKey('latitude')) {
      context.handle(
        _latitudeMeta,
        latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta),
      );
    }
    if (data.containsKey('longitude')) {
      context.handle(
        _longitudeMeta,
        longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta),
      );
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('width')) {
      context.handle(
        _widthMeta,
        width.isAcceptableOrUnknown(data['width']!, _widthMeta),
      );
    }
    if (data.containsKey('height')) {
      context.handle(
        _heightMeta,
        height.isAcceptableOrUnknown(data['height']!, _heightMeta),
      );
    }
    if (data.containsKey('duration_ms')) {
      context.handle(
        _durationMsMeta,
        durationMs.isAcceptableOrUnknown(data['duration_ms']!, _durationMsMeta),
      );
    }
    if (data.containsKey('remote_deleted_at')) {
      context.handle(
        _remoteDeletedAtMeta,
        remoteDeletedAt.isAcceptableOrUnknown(
          data['remote_deleted_at']!,
          _remoteDeletedAtMeta,
        ),
      );
    }
    if (data.containsKey('decided_at')) {
      context.handle(
        _decidedAtMeta,
        decidedAt.isAcceptableOrUnknown(data['decided_at']!, _decidedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<i0.GeneratedColumn> get $primaryKey => {id};
  @override
  i1.TrashSyncEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return i1.TrashSyncEntityData(
      id: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      checksum: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.string,
        data['${effectivePrefix}checksum'],
      ),
      isFavorite: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.bool,
        data['${effectivePrefix}is_favorite'],
      )!,
      orientation: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.int,
        data['${effectivePrefix}orientation'],
      )!,
      iCloudId: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.string,
        data['${effectivePrefix}i_cloud_id'],
      ),
      adjustmentTime: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.dateTime,
        data['${effectivePrefix}adjustment_time'],
      ),
      latitude: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.double,
        data['${effectivePrefix}latitude'],
      ),
      longitude: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.double,
        data['${effectivePrefix}longitude'],
      ),
      playbackStyle: i1.$TrashSyncEntityTable.$converterplaybackStyle.fromSql(
        attachedDatabase.typeMapping.read(
          i0.DriftSqlType.int,
          data['${effectivePrefix}playback_style'],
        )!,
      ),
      name: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      type: i1.$TrashSyncEntityTable.$convertertype.fromSql(
        attachedDatabase.typeMapping.read(
          i0.DriftSqlType.int,
          data['${effectivePrefix}type'],
        )!,
      ),
      createdAt: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      width: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.int,
        data['${effectivePrefix}width'],
      ),
      height: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.int,
        data['${effectivePrefix}height'],
      ),
      durationMs: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.int,
        data['${effectivePrefix}duration_ms'],
      ),
      decision: i1.$TrashSyncEntityTable.$converterdecision.fromSql(
        attachedDatabase.typeMapping.read(
          i0.DriftSqlType.int,
          data['${effectivePrefix}decision'],
        )!,
      ),
      triggerSource: i1.$TrashSyncEntityTable.$convertertriggerSource.fromSql(
        attachedDatabase.typeMapping.read(
          i0.DriftSqlType.int,
          data['${effectivePrefix}trigger_source'],
        )!,
      ),
      remoteDeletedAt: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.dateTime,
        data['${effectivePrefix}remote_deleted_at'],
      ),
      decidedAt: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.dateTime,
        data['${effectivePrefix}decided_at'],
      )!,
    );
  }

  @override
  $TrashSyncEntityTable createAlias(String alias) {
    return $TrashSyncEntityTable(attachedDatabase, alias);
  }

  static i0.JsonTypeConverter2<i2.AssetPlaybackStyle, int, int>
  $converterplaybackStyle = const i0.EnumIndexConverter<i2.AssetPlaybackStyle>(
    i2.AssetPlaybackStyle.values,
  );
  static i0.JsonTypeConverter2<i2.AssetType, int, int> $convertertype =
      const i0.EnumIndexConverter<i2.AssetType>(i2.AssetType.values);
  static i0.JsonTypeConverter2<i3.TrashStateDecision, int, int>
  $converterdecision = const i0.EnumIndexConverter<i3.TrashStateDecision>(
    i3.TrashStateDecision.values,
  );
  static i0.JsonTypeConverter2<i3.TrashTriggerSource, int, int>
  $convertertriggerSource = const i0.EnumIndexConverter<i3.TrashTriggerSource>(
    i3.TrashTriggerSource.values,
  );
  @override
  bool get withoutRowId => true;
  @override
  bool get isStrict => true;
}

class TrashSyncEntityData extends i0.DataClass
    implements i0.Insertable<i1.TrashSyncEntityData> {
  final String id;
  final String? checksum;
  final bool isFavorite;
  final int orientation;
  final String? iCloudId;
  final DateTime? adjustmentTime;
  final double? latitude;
  final double? longitude;
  final i2.AssetPlaybackStyle playbackStyle;
  final String name;
  final i2.AssetType type;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int? width;
  final int? height;
  final int? durationMs;
  final i3.TrashStateDecision decision;
  final i3.TrashTriggerSource triggerSource;
  final DateTime? remoteDeletedAt;
  final DateTime decidedAt;
  const TrashSyncEntityData({
    required this.id,
    this.checksum,
    required this.isFavorite,
    required this.orientation,
    this.iCloudId,
    this.adjustmentTime,
    this.latitude,
    this.longitude,
    required this.playbackStyle,
    required this.name,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
    this.width,
    this.height,
    this.durationMs,
    required this.decision,
    required this.triggerSource,
    this.remoteDeletedAt,
    required this.decidedAt,
  });
  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    map['id'] = i0.Variable<String>(id);
    if (!nullToAbsent || checksum != null) {
      map['checksum'] = i0.Variable<String>(checksum);
    }
    map['is_favorite'] = i0.Variable<bool>(isFavorite);
    map['orientation'] = i0.Variable<int>(orientation);
    if (!nullToAbsent || iCloudId != null) {
      map['i_cloud_id'] = i0.Variable<String>(iCloudId);
    }
    if (!nullToAbsent || adjustmentTime != null) {
      map['adjustment_time'] = i0.Variable<DateTime>(adjustmentTime);
    }
    if (!nullToAbsent || latitude != null) {
      map['latitude'] = i0.Variable<double>(latitude);
    }
    if (!nullToAbsent || longitude != null) {
      map['longitude'] = i0.Variable<double>(longitude);
    }
    {
      map['playback_style'] = i0.Variable<int>(
        i1.$TrashSyncEntityTable.$converterplaybackStyle.toSql(playbackStyle),
      );
    }
    map['name'] = i0.Variable<String>(name);
    {
      map['type'] = i0.Variable<int>(
        i1.$TrashSyncEntityTable.$convertertype.toSql(type),
      );
    }
    map['created_at'] = i0.Variable<DateTime>(createdAt);
    map['updated_at'] = i0.Variable<DateTime>(updatedAt);
    if (!nullToAbsent || width != null) {
      map['width'] = i0.Variable<int>(width);
    }
    if (!nullToAbsent || height != null) {
      map['height'] = i0.Variable<int>(height);
    }
    if (!nullToAbsent || durationMs != null) {
      map['duration_ms'] = i0.Variable<int>(durationMs);
    }
    {
      map['decision'] = i0.Variable<int>(
        i1.$TrashSyncEntityTable.$converterdecision.toSql(decision),
      );
    }
    {
      map['trigger_source'] = i0.Variable<int>(
        i1.$TrashSyncEntityTable.$convertertriggerSource.toSql(triggerSource),
      );
    }
    if (!nullToAbsent || remoteDeletedAt != null) {
      map['remote_deleted_at'] = i0.Variable<DateTime>(remoteDeletedAt);
    }
    map['decided_at'] = i0.Variable<DateTime>(decidedAt);
    return map;
  }

  factory TrashSyncEntityData.fromJson(
    Map<String, dynamic> json, {
    i0.ValueSerializer? serializer,
  }) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return TrashSyncEntityData(
      id: serializer.fromJson<String>(json['id']),
      checksum: serializer.fromJson<String?>(json['checksum']),
      isFavorite: serializer.fromJson<bool>(json['isFavorite']),
      orientation: serializer.fromJson<int>(json['orientation']),
      iCloudId: serializer.fromJson<String?>(json['iCloudId']),
      adjustmentTime: serializer.fromJson<DateTime?>(json['adjustmentTime']),
      latitude: serializer.fromJson<double?>(json['latitude']),
      longitude: serializer.fromJson<double?>(json['longitude']),
      playbackStyle: i1.$TrashSyncEntityTable.$converterplaybackStyle.fromJson(
        serializer.fromJson<int>(json['playbackStyle']),
      ),
      name: serializer.fromJson<String>(json['name']),
      type: i1.$TrashSyncEntityTable.$convertertype.fromJson(
        serializer.fromJson<int>(json['type']),
      ),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      width: serializer.fromJson<int?>(json['width']),
      height: serializer.fromJson<int?>(json['height']),
      durationMs: serializer.fromJson<int?>(json['durationMs']),
      decision: i1.$TrashSyncEntityTable.$converterdecision.fromJson(
        serializer.fromJson<int>(json['decision']),
      ),
      triggerSource: i1.$TrashSyncEntityTable.$convertertriggerSource.fromJson(
        serializer.fromJson<int>(json['triggerSource']),
      ),
      remoteDeletedAt: serializer.fromJson<DateTime?>(json['remoteDeletedAt']),
      decidedAt: serializer.fromJson<DateTime>(json['decidedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'checksum': serializer.toJson<String?>(checksum),
      'isFavorite': serializer.toJson<bool>(isFavorite),
      'orientation': serializer.toJson<int>(orientation),
      'iCloudId': serializer.toJson<String?>(iCloudId),
      'adjustmentTime': serializer.toJson<DateTime?>(adjustmentTime),
      'latitude': serializer.toJson<double?>(latitude),
      'longitude': serializer.toJson<double?>(longitude),
      'playbackStyle': serializer.toJson<int>(
        i1.$TrashSyncEntityTable.$converterplaybackStyle.toJson(playbackStyle),
      ),
      'name': serializer.toJson<String>(name),
      'type': serializer.toJson<int>(
        i1.$TrashSyncEntityTable.$convertertype.toJson(type),
      ),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'width': serializer.toJson<int?>(width),
      'height': serializer.toJson<int?>(height),
      'durationMs': serializer.toJson<int?>(durationMs),
      'decision': serializer.toJson<int>(
        i1.$TrashSyncEntityTable.$converterdecision.toJson(decision),
      ),
      'triggerSource': serializer.toJson<int>(
        i1.$TrashSyncEntityTable.$convertertriggerSource.toJson(triggerSource),
      ),
      'remoteDeletedAt': serializer.toJson<DateTime?>(remoteDeletedAt),
      'decidedAt': serializer.toJson<DateTime>(decidedAt),
    };
  }

  i1.TrashSyncEntityData copyWith({
    String? id,
    i0.Value<String?> checksum = const i0.Value.absent(),
    bool? isFavorite,
    int? orientation,
    i0.Value<String?> iCloudId = const i0.Value.absent(),
    i0.Value<DateTime?> adjustmentTime = const i0.Value.absent(),
    i0.Value<double?> latitude = const i0.Value.absent(),
    i0.Value<double?> longitude = const i0.Value.absent(),
    i2.AssetPlaybackStyle? playbackStyle,
    String? name,
    i2.AssetType? type,
    DateTime? createdAt,
    DateTime? updatedAt,
    i0.Value<int?> width = const i0.Value.absent(),
    i0.Value<int?> height = const i0.Value.absent(),
    i0.Value<int?> durationMs = const i0.Value.absent(),
    i3.TrashStateDecision? decision,
    i3.TrashTriggerSource? triggerSource,
    i0.Value<DateTime?> remoteDeletedAt = const i0.Value.absent(),
    DateTime? decidedAt,
  }) => i1.TrashSyncEntityData(
    id: id ?? this.id,
    checksum: checksum.present ? checksum.value : this.checksum,
    isFavorite: isFavorite ?? this.isFavorite,
    orientation: orientation ?? this.orientation,
    iCloudId: iCloudId.present ? iCloudId.value : this.iCloudId,
    adjustmentTime: adjustmentTime.present
        ? adjustmentTime.value
        : this.adjustmentTime,
    latitude: latitude.present ? latitude.value : this.latitude,
    longitude: longitude.present ? longitude.value : this.longitude,
    playbackStyle: playbackStyle ?? this.playbackStyle,
    name: name ?? this.name,
    type: type ?? this.type,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    width: width.present ? width.value : this.width,
    height: height.present ? height.value : this.height,
    durationMs: durationMs.present ? durationMs.value : this.durationMs,
    decision: decision ?? this.decision,
    triggerSource: triggerSource ?? this.triggerSource,
    remoteDeletedAt: remoteDeletedAt.present
        ? remoteDeletedAt.value
        : this.remoteDeletedAt,
    decidedAt: decidedAt ?? this.decidedAt,
  );
  TrashSyncEntityData copyWithCompanion(i1.TrashSyncEntityCompanion data) {
    return TrashSyncEntityData(
      id: data.id.present ? data.id.value : this.id,
      checksum: data.checksum.present ? data.checksum.value : this.checksum,
      isFavorite: data.isFavorite.present
          ? data.isFavorite.value
          : this.isFavorite,
      orientation: data.orientation.present
          ? data.orientation.value
          : this.orientation,
      iCloudId: data.iCloudId.present ? data.iCloudId.value : this.iCloudId,
      adjustmentTime: data.adjustmentTime.present
          ? data.adjustmentTime.value
          : this.adjustmentTime,
      latitude: data.latitude.present ? data.latitude.value : this.latitude,
      longitude: data.longitude.present ? data.longitude.value : this.longitude,
      playbackStyle: data.playbackStyle.present
          ? data.playbackStyle.value
          : this.playbackStyle,
      name: data.name.present ? data.name.value : this.name,
      type: data.type.present ? data.type.value : this.type,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      width: data.width.present ? data.width.value : this.width,
      height: data.height.present ? data.height.value : this.height,
      durationMs: data.durationMs.present
          ? data.durationMs.value
          : this.durationMs,
      decision: data.decision.present ? data.decision.value : this.decision,
      triggerSource: data.triggerSource.present
          ? data.triggerSource.value
          : this.triggerSource,
      remoteDeletedAt: data.remoteDeletedAt.present
          ? data.remoteDeletedAt.value
          : this.remoteDeletedAt,
      decidedAt: data.decidedAt.present ? data.decidedAt.value : this.decidedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TrashSyncEntityData(')
          ..write('id: $id, ')
          ..write('checksum: $checksum, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('orientation: $orientation, ')
          ..write('iCloudId: $iCloudId, ')
          ..write('adjustmentTime: $adjustmentTime, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('playbackStyle: $playbackStyle, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('width: $width, ')
          ..write('height: $height, ')
          ..write('durationMs: $durationMs, ')
          ..write('decision: $decision, ')
          ..write('triggerSource: $triggerSource, ')
          ..write('remoteDeletedAt: $remoteDeletedAt, ')
          ..write('decidedAt: $decidedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    checksum,
    isFavorite,
    orientation,
    iCloudId,
    adjustmentTime,
    latitude,
    longitude,
    playbackStyle,
    name,
    type,
    createdAt,
    updatedAt,
    width,
    height,
    durationMs,
    decision,
    triggerSource,
    remoteDeletedAt,
    decidedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is i1.TrashSyncEntityData &&
          other.id == this.id &&
          other.checksum == this.checksum &&
          other.isFavorite == this.isFavorite &&
          other.orientation == this.orientation &&
          other.iCloudId == this.iCloudId &&
          other.adjustmentTime == this.adjustmentTime &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.playbackStyle == this.playbackStyle &&
          other.name == this.name &&
          other.type == this.type &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.width == this.width &&
          other.height == this.height &&
          other.durationMs == this.durationMs &&
          other.decision == this.decision &&
          other.triggerSource == this.triggerSource &&
          other.remoteDeletedAt == this.remoteDeletedAt &&
          other.decidedAt == this.decidedAt);
}

class TrashSyncEntityCompanion
    extends i0.UpdateCompanion<i1.TrashSyncEntityData> {
  final i0.Value<String> id;
  final i0.Value<String?> checksum;
  final i0.Value<bool> isFavorite;
  final i0.Value<int> orientation;
  final i0.Value<String?> iCloudId;
  final i0.Value<DateTime?> adjustmentTime;
  final i0.Value<double?> latitude;
  final i0.Value<double?> longitude;
  final i0.Value<i2.AssetPlaybackStyle> playbackStyle;
  final i0.Value<String> name;
  final i0.Value<i2.AssetType> type;
  final i0.Value<DateTime> createdAt;
  final i0.Value<DateTime> updatedAt;
  final i0.Value<int?> width;
  final i0.Value<int?> height;
  final i0.Value<int?> durationMs;
  final i0.Value<i3.TrashStateDecision> decision;
  final i0.Value<i3.TrashTriggerSource> triggerSource;
  final i0.Value<DateTime?> remoteDeletedAt;
  final i0.Value<DateTime> decidedAt;
  const TrashSyncEntityCompanion({
    this.id = const i0.Value.absent(),
    this.checksum = const i0.Value.absent(),
    this.isFavorite = const i0.Value.absent(),
    this.orientation = const i0.Value.absent(),
    this.iCloudId = const i0.Value.absent(),
    this.adjustmentTime = const i0.Value.absent(),
    this.latitude = const i0.Value.absent(),
    this.longitude = const i0.Value.absent(),
    this.playbackStyle = const i0.Value.absent(),
    this.name = const i0.Value.absent(),
    this.type = const i0.Value.absent(),
    this.createdAt = const i0.Value.absent(),
    this.updatedAt = const i0.Value.absent(),
    this.width = const i0.Value.absent(),
    this.height = const i0.Value.absent(),
    this.durationMs = const i0.Value.absent(),
    this.decision = const i0.Value.absent(),
    this.triggerSource = const i0.Value.absent(),
    this.remoteDeletedAt = const i0.Value.absent(),
    this.decidedAt = const i0.Value.absent(),
  });
  TrashSyncEntityCompanion.insert({
    required String id,
    this.checksum = const i0.Value.absent(),
    this.isFavorite = const i0.Value.absent(),
    this.orientation = const i0.Value.absent(),
    this.iCloudId = const i0.Value.absent(),
    this.adjustmentTime = const i0.Value.absent(),
    this.latitude = const i0.Value.absent(),
    this.longitude = const i0.Value.absent(),
    this.playbackStyle = const i0.Value.absent(),
    required String name,
    required i2.AssetType type,
    this.createdAt = const i0.Value.absent(),
    this.updatedAt = const i0.Value.absent(),
    this.width = const i0.Value.absent(),
    this.height = const i0.Value.absent(),
    this.durationMs = const i0.Value.absent(),
    required i3.TrashStateDecision decision,
    required i3.TrashTriggerSource triggerSource,
    this.remoteDeletedAt = const i0.Value.absent(),
    this.decidedAt = const i0.Value.absent(),
  }) : id = i0.Value(id),
       name = i0.Value(name),
       type = i0.Value(type),
       decision = i0.Value(decision),
       triggerSource = i0.Value(triggerSource);
  static i0.Insertable<i1.TrashSyncEntityData> custom({
    i0.Expression<String>? id,
    i0.Expression<String>? checksum,
    i0.Expression<bool>? isFavorite,
    i0.Expression<int>? orientation,
    i0.Expression<String>? iCloudId,
    i0.Expression<DateTime>? adjustmentTime,
    i0.Expression<double>? latitude,
    i0.Expression<double>? longitude,
    i0.Expression<int>? playbackStyle,
    i0.Expression<String>? name,
    i0.Expression<int>? type,
    i0.Expression<DateTime>? createdAt,
    i0.Expression<DateTime>? updatedAt,
    i0.Expression<int>? width,
    i0.Expression<int>? height,
    i0.Expression<int>? durationMs,
    i0.Expression<int>? decision,
    i0.Expression<int>? triggerSource,
    i0.Expression<DateTime>? remoteDeletedAt,
    i0.Expression<DateTime>? decidedAt,
  }) {
    return i0.RawValuesInsertable({
      if (id != null) 'id': id,
      if (checksum != null) 'checksum': checksum,
      if (isFavorite != null) 'is_favorite': isFavorite,
      if (orientation != null) 'orientation': orientation,
      if (iCloudId != null) 'i_cloud_id': iCloudId,
      if (adjustmentTime != null) 'adjustment_time': adjustmentTime,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (playbackStyle != null) 'playback_style': playbackStyle,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (width != null) 'width': width,
      if (height != null) 'height': height,
      if (durationMs != null) 'duration_ms': durationMs,
      if (decision != null) 'decision': decision,
      if (triggerSource != null) 'trigger_source': triggerSource,
      if (remoteDeletedAt != null) 'remote_deleted_at': remoteDeletedAt,
      if (decidedAt != null) 'decided_at': decidedAt,
    });
  }

  i1.TrashSyncEntityCompanion copyWith({
    i0.Value<String>? id,
    i0.Value<String?>? checksum,
    i0.Value<bool>? isFavorite,
    i0.Value<int>? orientation,
    i0.Value<String?>? iCloudId,
    i0.Value<DateTime?>? adjustmentTime,
    i0.Value<double?>? latitude,
    i0.Value<double?>? longitude,
    i0.Value<i2.AssetPlaybackStyle>? playbackStyle,
    i0.Value<String>? name,
    i0.Value<i2.AssetType>? type,
    i0.Value<DateTime>? createdAt,
    i0.Value<DateTime>? updatedAt,
    i0.Value<int?>? width,
    i0.Value<int?>? height,
    i0.Value<int?>? durationMs,
    i0.Value<i3.TrashStateDecision>? decision,
    i0.Value<i3.TrashTriggerSource>? triggerSource,
    i0.Value<DateTime?>? remoteDeletedAt,
    i0.Value<DateTime>? decidedAt,
  }) {
    return i1.TrashSyncEntityCompanion(
      id: id ?? this.id,
      checksum: checksum ?? this.checksum,
      isFavorite: isFavorite ?? this.isFavorite,
      orientation: orientation ?? this.orientation,
      iCloudId: iCloudId ?? this.iCloudId,
      adjustmentTime: adjustmentTime ?? this.adjustmentTime,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      playbackStyle: playbackStyle ?? this.playbackStyle,
      name: name ?? this.name,
      type: type ?? this.type,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      width: width ?? this.width,
      height: height ?? this.height,
      durationMs: durationMs ?? this.durationMs,
      decision: decision ?? this.decision,
      triggerSource: triggerSource ?? this.triggerSource,
      remoteDeletedAt: remoteDeletedAt ?? this.remoteDeletedAt,
      decidedAt: decidedAt ?? this.decidedAt,
    );
  }

  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    if (id.present) {
      map['id'] = i0.Variable<String>(id.value);
    }
    if (checksum.present) {
      map['checksum'] = i0.Variable<String>(checksum.value);
    }
    if (isFavorite.present) {
      map['is_favorite'] = i0.Variable<bool>(isFavorite.value);
    }
    if (orientation.present) {
      map['orientation'] = i0.Variable<int>(orientation.value);
    }
    if (iCloudId.present) {
      map['i_cloud_id'] = i0.Variable<String>(iCloudId.value);
    }
    if (adjustmentTime.present) {
      map['adjustment_time'] = i0.Variable<DateTime>(adjustmentTime.value);
    }
    if (latitude.present) {
      map['latitude'] = i0.Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = i0.Variable<double>(longitude.value);
    }
    if (playbackStyle.present) {
      map['playback_style'] = i0.Variable<int>(
        i1.$TrashSyncEntityTable.$converterplaybackStyle.toSql(
          playbackStyle.value,
        ),
      );
    }
    if (name.present) {
      map['name'] = i0.Variable<String>(name.value);
    }
    if (type.present) {
      map['type'] = i0.Variable<int>(
        i1.$TrashSyncEntityTable.$convertertype.toSql(type.value),
      );
    }
    if (createdAt.present) {
      map['created_at'] = i0.Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = i0.Variable<DateTime>(updatedAt.value);
    }
    if (width.present) {
      map['width'] = i0.Variable<int>(width.value);
    }
    if (height.present) {
      map['height'] = i0.Variable<int>(height.value);
    }
    if (durationMs.present) {
      map['duration_ms'] = i0.Variable<int>(durationMs.value);
    }
    if (decision.present) {
      map['decision'] = i0.Variable<int>(
        i1.$TrashSyncEntityTable.$converterdecision.toSql(decision.value),
      );
    }
    if (triggerSource.present) {
      map['trigger_source'] = i0.Variable<int>(
        i1.$TrashSyncEntityTable.$convertertriggerSource.toSql(
          triggerSource.value,
        ),
      );
    }
    if (remoteDeletedAt.present) {
      map['remote_deleted_at'] = i0.Variable<DateTime>(remoteDeletedAt.value);
    }
    if (decidedAt.present) {
      map['decided_at'] = i0.Variable<DateTime>(decidedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TrashSyncEntityCompanion(')
          ..write('id: $id, ')
          ..write('checksum: $checksum, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('orientation: $orientation, ')
          ..write('iCloudId: $iCloudId, ')
          ..write('adjustmentTime: $adjustmentTime, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('playbackStyle: $playbackStyle, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('width: $width, ')
          ..write('height: $height, ')
          ..write('durationMs: $durationMs, ')
          ..write('decision: $decision, ')
          ..write('triggerSource: $triggerSource, ')
          ..write('remoteDeletedAt: $remoteDeletedAt, ')
          ..write('decidedAt: $decidedAt')
          ..write(')'))
        .toString();
  }
}

i0.Index get idxTrashSyncChecksum => i0.Index(
  'idx_trash_sync_checksum',
  'CREATE INDEX IF NOT EXISTS idx_trash_sync_checksum ON trash_sync_entity (checksum)',
);

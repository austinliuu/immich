import 'package:immich_mobile/constants/enums.dart';
import 'package:immich_mobile/domain/models/metadata_key.dart';

class CleanupConfig {
  final bool keepFavorites;
  final AssetKeepType keepMediaType;
  final List<String> keepAlbumIds;
  final int cutoffDaysAgo;
  final bool defaultsInitialized;

  const CleanupConfig({
    required this.keepFavorites,
    required this.keepMediaType,
    required this.keepAlbumIds,
    required this.cutoffDaysAgo,
    required this.defaultsInitialized,
  });

  CleanupConfig.defaults()
    : keepFavorites = MetadataKey.cleanupKeepFavorites.defaultValue,
      keepMediaType = MetadataKey.cleanupKeepMediaType.defaultValue,
      keepAlbumIds = MetadataKey.cleanupKeepAlbumIds.defaultValue,
      cutoffDaysAgo = MetadataKey.cleanupCutoffDaysAgo.defaultValue,
      defaultsInitialized = MetadataKey.cleanupDefaultsInitialized.defaultValue;

  CleanupConfig copyWith({
    bool? keepFavorites,
    AssetKeepType? keepMediaType,
    List<String>? keepAlbumIds,
    int? cutoffDaysAgo,
    bool? defaultsInitialized,
  }) => .new(
    keepFavorites: keepFavorites ?? this.keepFavorites,
    keepMediaType: keepMediaType ?? this.keepMediaType,
    keepAlbumIds: keepAlbumIds ?? this.keepAlbumIds,
    cutoffDaysAgo: cutoffDaysAgo ?? this.cutoffDaysAgo,
    defaultsInitialized: defaultsInitialized ?? this.defaultsInitialized,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CleanupConfig &&
          other.keepFavorites == keepFavorites &&
          other.keepMediaType == keepMediaType &&
          other.keepAlbumIds == keepAlbumIds &&
          other.cutoffDaysAgo == cutoffDaysAgo &&
          other.defaultsInitialized == defaultsInitialized);

  @override
  int get hashCode => Object.hash(keepFavorites, keepMediaType, keepAlbumIds, cutoffDaysAgo, defaultsInitialized);

  @override
  String toString() =>
      'CleanupConfig(keepFavorites: $keepFavorites, keepMediaType: $keepMediaType, keepAlbumIds: $keepAlbumIds, cutoffDaysAgo: $cutoffDaysAgo, defaultsInitialized: $defaultsInitialized)';
}

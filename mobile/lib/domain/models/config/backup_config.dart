import 'package:immich_mobile/domain/models/metadata_key.dart';

class BackupConfig {
  final bool enabled;
  final bool useCellularForVideos;
  final bool useCellularForPhotos;
  final bool requireCharging;
  final int triggerDelay;
  final bool syncAlbums;

  const BackupConfig({
    required this.enabled,
    required this.useCellularForVideos,
    required this.useCellularForPhotos,
    required this.requireCharging,
    required this.triggerDelay,
    required this.syncAlbums,
  });

  BackupConfig.defaults()
    : enabled = MetadataKey.backupEnabled.defaultValue,
      useCellularForVideos = MetadataKey.backupUseCellularForVideos.defaultValue,
      useCellularForPhotos = MetadataKey.backupUseCellularForPhotos.defaultValue,
      requireCharging = MetadataKey.backupRequireCharging.defaultValue,
      triggerDelay = MetadataKey.backupTriggerDelay.defaultValue,
      syncAlbums = MetadataKey.backupSyncAlbums.defaultValue;

  BackupConfig copyWith({
    bool? enabled,
    bool? useCellularForVideos,
    bool? useCellularForPhotos,
    bool? requireCharging,
    int? triggerDelay,
    bool? syncAlbums,
  }) => BackupConfig(
    enabled: enabled ?? this.enabled,
    useCellularForVideos: useCellularForVideos ?? this.useCellularForVideos,
    useCellularForPhotos: useCellularForPhotos ?? this.useCellularForPhotos,
    requireCharging: requireCharging ?? this.requireCharging,
    triggerDelay: triggerDelay ?? this.triggerDelay,
    syncAlbums: syncAlbums ?? this.syncAlbums,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BackupConfig &&
          other.enabled == enabled &&
          other.useCellularForVideos == useCellularForVideos &&
          other.useCellularForPhotos == useCellularForPhotos &&
          other.requireCharging == requireCharging &&
          other.triggerDelay == triggerDelay &&
          other.syncAlbums == syncAlbums);

  @override
  int get hashCode =>
      Object.hash(enabled, useCellularForVideos, useCellularForPhotos, requireCharging, triggerDelay, syncAlbums);

  @override
  String toString() =>
      'BackupConfig(enabled: $enabled, useCellularForVideos: $useCellularForVideos, useCellularForPhotos: $useCellularForPhotos, requireCharging: $requireCharging, triggerDelay: $triggerDelay, syncAlbums: $syncAlbums)';
}

import 'package:immich_mobile/domain/models/config/album_config.dart';
import 'package:immich_mobile/domain/models/config/backup_config.dart';
import 'package:immich_mobile/domain/models/config/cleanup_config.dart';
import 'package:immich_mobile/domain/models/config/image_config.dart';
import 'package:immich_mobile/domain/models/config/map_config.dart';
import 'package:immich_mobile/domain/models/config/slideshow_config.dart';
import 'package:immich_mobile/domain/models/config/theme_config.dart';
import 'package:immich_mobile/domain/models/config/timeline_config.dart';
import 'package:immich_mobile/domain/models/config/viewer_config.dart';

class AppConfig {
  final ThemeConfig theme;
  final CleanupConfig cleanup;
  final MapConfig map;
  final TimelineConfig timeline;
  final ImageConfig image;
  final ViewerConfig viewer;
  final SlideshowConfig slideshow;
  final AlbumConfig album;
  final BackupConfig backup;

  const AppConfig({
    required this.theme,
    required this.cleanup,
    required this.map,
    required this.timeline,
    required this.image,
    required this.viewer,
    required this.slideshow,
    required this.album,
    required this.backup,
  });

  AppConfig.defaults()
    : theme = .defaults(),
      cleanup = .defaults(),
      map = .defaults(),
      timeline = .defaults(),
      image = .defaults(),
      viewer = .defaults(),
      slideshow = .defaults(),
      album = .defaults(),
      backup = .defaults();

  AppConfig copyWith({
    ThemeConfig? theme,
    CleanupConfig? cleanup,
    MapConfig? map,
    TimelineConfig? timeline,
    ImageConfig? image,
    ViewerConfig? viewer,
    SlideshowConfig? slideshow,
    AlbumConfig? album,
    BackupConfig? backup,
  }) => .new(
    theme: theme ?? this.theme,
    cleanup: cleanup ?? this.cleanup,
    map: map ?? this.map,
    timeline: timeline ?? this.timeline,
    image: image ?? this.image,
    viewer: viewer ?? this.viewer,
    slideshow: slideshow ?? this.slideshow,
    album: album ?? this.album,
    backup: backup ?? this.backup,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppConfig &&
          other.theme == theme &&
          other.cleanup == cleanup &&
          other.map == map &&
          other.timeline == timeline &&
          other.image == image &&
          other.viewer == viewer &&
          other.slideshow == slideshow &&
          other.album == album &&
          other.backup == backup);

  @override
  int get hashCode => Object.hash(theme, cleanup, map, timeline, image, viewer, slideshow, album, backup);

  @override
  String toString() =>
      'AppConfig(theme: $theme, cleanup: $cleanup, map: $map, timeline: $timeline, image: $image, viewer: $viewer, slideshow: $slideshow, album: $album, backup: $backup)';
}

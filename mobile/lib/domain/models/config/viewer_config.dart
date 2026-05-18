import 'package:immich_mobile/domain/models/metadata_key.dart';

class ViewerConfig {
  final bool loopVideo;
  final bool loadOriginalVideo;
  final bool autoPlayVideo;
  final bool tapToNavigate;

  const ViewerConfig({
    required this.loopVideo,
    required this.loadOriginalVideo,
    required this.autoPlayVideo,
    required this.tapToNavigate,
  });

  ViewerConfig.defaults()
    : loopVideo = MetadataKey.viewerLoopVideo.defaultValue,
      loadOriginalVideo = MetadataKey.viewerLoadOriginalVideo.defaultValue,
      autoPlayVideo = MetadataKey.viewerAutoPlayVideo.defaultValue,
      tapToNavigate = MetadataKey.viewerTapToNavigate.defaultValue;

  ViewerConfig copyWith({bool? loopVideo, bool? loadOriginalVideo, bool? autoPlayVideo, bool? tapToNavigate}) =>
      ViewerConfig(
        loopVideo: loopVideo ?? this.loopVideo,
        loadOriginalVideo: loadOriginalVideo ?? this.loadOriginalVideo,
        autoPlayVideo: autoPlayVideo ?? this.autoPlayVideo,
        tapToNavigate: tapToNavigate ?? this.tapToNavigate,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ViewerConfig &&
          other.loopVideo == loopVideo &&
          other.loadOriginalVideo == loadOriginalVideo &&
          other.autoPlayVideo == autoPlayVideo &&
          other.tapToNavigate == tapToNavigate);

  @override
  int get hashCode => Object.hash(loopVideo, loadOriginalVideo, autoPlayVideo, tapToNavigate);

  @override
  String toString() =>
      'ViewerConfig(loopVideo: $loopVideo, loadOriginalVideo: $loadOriginalVideo, autoPlayVideo: $autoPlayVideo, tapToNavigate: $tapToNavigate)';
}

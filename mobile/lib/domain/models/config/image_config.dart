import 'package:immich_mobile/domain/models/metadata_key.dart';

class ImageConfig {
  final bool preferRemote;
  final bool loadOriginal;

  const ImageConfig({required this.preferRemote, required this.loadOriginal});

  ImageConfig.defaults()
    : preferRemote = MetadataKey.imagePreferRemote.defaultValue,
      loadOriginal = MetadataKey.imageLoadOriginal.defaultValue;

  ImageConfig copyWith({bool? preferRemote, bool? loadOriginal}) =>
      ImageConfig(preferRemote: preferRemote ?? this.preferRemote, loadOriginal: loadOriginal ?? this.loadOriginal);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ImageConfig && other.preferRemote == preferRemote && other.loadOriginal == loadOriginal);

  @override
  int get hashCode => Object.hash(preferRemote, loadOriginal);

  @override
  String toString() => 'ImageConfig(preferRemoteImage: $preferRemote, loadOriginal: $loadOriginal)';
}

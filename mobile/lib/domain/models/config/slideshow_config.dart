import 'package:immich_mobile/constants/enums.dart';
import 'package:immich_mobile/domain/models/metadata_key.dart';

class SlideshowConfig {
  final bool transition;
  final bool repeat;
  final int duration;
  final SlideshowLook look;
  final SlideshowDirection direction;

  const SlideshowConfig({
    required this.transition,
    required this.repeat,
    required this.duration,
    required this.look,
    required this.direction,
  });

  SlideshowConfig.defaults()
    : transition = MetadataKey.slideshowTransition.defaultValue,
      repeat = MetadataKey.slideshowRepeat.defaultValue,
      duration = MetadataKey.slideshowDuration.defaultValue,
      look = MetadataKey.slideshowLook.defaultValue,
      direction = MetadataKey.slideshowDirection.defaultValue;

  SlideshowConfig copyWith({
    bool? transition,
    bool? repeat,
    int? duration,
    SlideshowLook? look,
    SlideshowDirection? direction,
  }) => SlideshowConfig(
    transition: transition ?? this.transition,
    repeat: repeat ?? this.repeat,
    duration: duration ?? this.duration,
    look: look ?? this.look,
    direction: direction ?? this.direction,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SlideshowConfig &&
          other.transition == transition &&
          other.repeat == repeat &&
          other.duration == duration &&
          other.look == look &&
          other.direction == direction);

  @override
  int get hashCode => Object.hash(transition, repeat, duration, look, direction);

  @override
  String toString() =>
      'SlideshowConfig(transition: $transition, repeat: $repeat, duration: $duration, look: $look, direction: $direction)';
}

import 'package:immich_mobile/domain/models/metadata_key.dart';
import 'package:immich_mobile/providers/album/album_sort_by_options.provider.dart';

class AlbumConfig {
  final AlbumSortMode sortMode;
  final bool isReverse;
  final bool isGrid;

  const AlbumConfig({required this.sortMode, required this.isReverse, required this.isGrid});

  AlbumConfig.defaults()
    : sortMode = MetadataKey.albumSortMode.defaultValue,
      isReverse = MetadataKey.albumIsReverse.defaultValue,
      isGrid = MetadataKey.albumIsGrid.defaultValue;

  AlbumConfig copyWith({AlbumSortMode? sortMode, bool? isReverse, bool? isGrid}) => AlbumConfig(
    sortMode: sortMode ?? this.sortMode,
    isReverse: isReverse ?? this.isReverse,
    isGrid: isGrid ?? this.isGrid,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AlbumConfig && other.sortMode == sortMode && other.isReverse == isReverse && other.isGrid == isGrid);

  @override
  int get hashCode => Object.hash(sortMode, isReverse, isGrid);

  @override
  String toString() => 'AlbumConfig(sortMode: $sortMode, isReverse: $isReverse, isGrid: $isGrid)';
}

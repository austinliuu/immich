import 'package:flutter/material.dart';
import 'package:immich_mobile/domain/models/metadata_key.dart';

class MapConfig {
  final int relativeDays;
  final bool favoritesOnly;
  final bool includeArchived;
  final ThemeMode themeMode;
  final bool withPartners;

  const MapConfig({
    required this.relativeDays,
    required this.favoritesOnly,
    required this.includeArchived,
    required this.themeMode,
    required this.withPartners,
  });

  MapConfig.defaults()
    : relativeDays = MetadataKey.mapRelativeDate.defaultValue,
      favoritesOnly = MetadataKey.mapShowFavoriteOnly.defaultValue,
      includeArchived = MetadataKey.mapIncludeArchived.defaultValue,
      themeMode = MetadataKey.mapThemeMode.defaultValue,
      withPartners = MetadataKey.mapWithPartners.defaultValue;

  MapConfig copyWith({
    int? relativeDays,
    bool? favoritesOnly,
    bool? includeArchived,
    ThemeMode? themeMode,
    bool? withPartners,
  }) => MapConfig(
    relativeDays: relativeDays ?? this.relativeDays,
    favoritesOnly: favoritesOnly ?? this.favoritesOnly,
    includeArchived: includeArchived ?? this.includeArchived,
    themeMode: themeMode ?? this.themeMode,
    withPartners: withPartners ?? this.withPartners,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MapConfig &&
          other.relativeDays == relativeDays &&
          other.favoritesOnly == favoritesOnly &&
          other.includeArchived == includeArchived &&
          other.themeMode == themeMode &&
          other.withPartners == withPartners);

  @override
  int get hashCode => Object.hash(relativeDays, favoritesOnly, includeArchived, themeMode, withPartners);

  @override
  String toString() =>
      'MapConfig(relativeDays: $relativeDays, favoritesOnly: $favoritesOnly, includeArchived: $includeArchived, themeMode: $themeMode, withPartners: $withPartners)';
}

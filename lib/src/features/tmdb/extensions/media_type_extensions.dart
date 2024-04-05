import 'package:easy_localization/easy_localization.dart';
import 'package:tmdb_api/tmdb_api.dart';
import 'package:watchable/src/constants/locale_keys.dart';

extension MediaTypeExtensions on MediaType {
  String get translation {
    switch (this) {
      case MediaType.all:
        return LocaleKeys.discover_all.tr();
      case MediaType.movie:
        return LocaleKeys.discover_movies.tr();
      case MediaType.tv:
        return LocaleKeys.discover_tv.tr();
      case MediaType.person:
        throw UnimplementedError('Person media type is not supported');
    }
  }
}

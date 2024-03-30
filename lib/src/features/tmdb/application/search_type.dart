import 'package:easy_localization/easy_localization.dart';
import 'package:watchable/src/constants/locale_keys.dart';

enum SearchType {
  all,
  movie,
  tv;

  String get name {
    switch (this) {
      case SearchType.all:
        return LocaleKeys.discover_all.tr();
      case SearchType.movie:
        return LocaleKeys.discover_movies.tr();
      case SearchType.tv:
        return LocaleKeys.discover_tv.tr();
    }
  }
}

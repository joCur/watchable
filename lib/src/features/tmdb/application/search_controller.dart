import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tmdb_api/tmdb_api.dart';

part 'search_controller.g.dart';

@riverpod
class SearchController extends _$SearchController {
  @override
  MediaType build() => MediaType.all;

  void setValue(MediaType value) {
    state = value;
  }
}

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'group_multi_select_controller.g.dart';

@riverpod
class GroupMultiSelectController extends _$GroupMultiSelectController {
  @override
  List<String> build() => [];

  void toggleSelection(String id) {
    if (state.contains(id)) {
      state = List.from(state)..remove(id);
    } else {
      state = List.from(state)..add(id);
    }
  }
}

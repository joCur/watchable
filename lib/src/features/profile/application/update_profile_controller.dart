import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:watchable/src/features/profile/data/profile_repository.dart';
import 'package:watchable/src/features/startup/application/startup_providers.dart';

import '../domain/profile.dart';

part 'update_profile_controller.g.dart';

@riverpod
class UpdateProfileController extends _$UpdateProfileController {
  @override
  Future<Profile?> build() async => null;

  Future updateProfile(String username, String? avatarUrl) async {
    state = const AsyncLoading();

    final supabase = ref.read(supabaseProvider);
    final profiles = ref.read(profileRepositoryProvider);

    state = await AsyncValue.guard(() => profiles.updateAsync(supabase.auth.currentUser!.id, username, avatarUrl));
  }
}

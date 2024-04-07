import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:watchable/src/features/group_media/presentation/combined_group_media_list.dart';
import 'package:watchable/src/features/profile/data/profile_repository.dart';

import '../../../constants/app_sizes.dart';
import '../../groups/data/group_repository.dart';
import '../../groups/presentation/components/user_has_no_group_widget.dart';
import '../../profile/presentation/components/profile_avatar.dart';

class HomeScreen extends ConsumerWidget {
  static const route = "/";
  static const name = "Home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(getCurrentUserProfileProvider);
    final groupsState = ref.watch(listCurrentUserGroupsProvider);
    bool hasGroup = !groupsState.hasValue || groupsState.value!.isNotEmpty;

    return Scaffold(
      appBar: AppBar(
        leading: Padding(padding: const EdgeInsets.all(Sizes.p8), child: ProfileAvatar(profile)),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: Supabase.instance.client.auth.signOut,
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          if (!hasGroup) const SliverFillRemaining(child: SliverToBoxAdapter(child: UserHasNoGroupWidget())),
          if (hasGroup) const CombinedGroupMediaList(),
        ],
      ),
    );
  }
}

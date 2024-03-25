import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

import '../../../constants/app_sizes.dart';
import '../../common/presentation/not_yet_available_banner.dart';
import '../../groups/data/group_repository.dart';
import '../../groups/presentation/components/user_has_no_group_widget.dart';

class HomeScreen extends ConsumerWidget {
  static const route = "/";
  static const name = "Home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groupsState = ref.watch(listCurrentUserGroupsProvider);
    bool hasGroup = !groupsState.hasValue || groupsState.value!.isNotEmpty;

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: screenPadding,
        child: Center(
          child: Column(
            children: [
              if (!hasGroup) const UserHasNoGroupWidget(),
              if (hasGroup) const NotYetAvailableBanner(),
              gapH12,
              ElevatedButton(onPressed: () => Supabase.instance.client.auth.signOut(), child: const Text("Sign Out")),
            ],
          ),
        ),
      ),
    );
  }
}

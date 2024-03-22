import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';
import 'package:watchable/src/constants/app_sizes.dart';
import 'package:watchable/src/features/groups/data/group_repository.dart';
import 'package:watchable/src/features/groups/presentation/components/user_has_no_group_widget.dart';
import 'package:watchable/src/features/groups/presentation/group_list_screen.dart';

class HomeScreen extends ConsumerWidget {
  static const route = "/";
  static const name = "Home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groupsState = ref.watch(listCurrentUserGroupsProvider);

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: screenPadding,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Home Screen"),
              gapH12,
              if (groupsState.hasValue && groupsState.value!.isEmpty) const UserHasNoGroupWidget(),
              gapH12,
              ElevatedButton(onPressed: () => context.pushNamed(GroupListScreen.name), child: const Text("User Groups")),
              ElevatedButton(onPressed: () => Supabase.instance.client.auth.signOut(), child: const Text("Sign Out")),
            ],
          ),
        ),
      ),
    );
  }
}

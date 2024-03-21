import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';
import 'package:watchable/src/features/autentication/presentation/login_screen.dart';
import 'package:watchable/src/features/groups/presentation/create_group_modal.dart';
import 'package:watchable/src/features/groups/presentation/group_list_screen.dart';
import 'package:watchable/src/features/profile/presentation/create_profile_screen.dart';
import 'package:watchable/src/features/home/presentation/home_screen.dart';

import '../features/profile/data/profile_repository.dart';
import 'go_router_refresh_stream.dart';

part 'router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter router(RouterRef ref) {
  final supabase = Supabase.instance.client;

  return GoRouter(
    initialLocation: LoginScreen.route,
    navigatorKey: _rootNavigatorKey,
    refreshListenable: GoRouterRefreshStream(supabase.auth.onAuthStateChange),
    redirect: (context, state) {
      final isLoggedIn = supabase.auth.currentUser != null;
      final onLoginPage = state.matchedLocation == LoginScreen.route;

      if (!isLoggedIn && !onLoginPage) return LoginScreen.route;
      if (isLoggedIn && onLoginPage) return HomeScreen.route;
      return null;
    },
    routes: [
      GoRoute(
        name: LoginScreen.name,
        path: LoginScreen.route,
        pageBuilder: (context, state) => NoTransitionPage(key: state.pageKey, child: const LoginScreen()),
      ),
      GoRoute(
        name: HomeScreen.name,
        path: HomeScreen.route,
        pageBuilder: (context, state) => NoTransitionPage(key: state.pageKey, child: const HomeScreen()),
      ),
      GoRoute(
        name: CreateProfileScreen.name,
        path: CreateProfileScreen.route,
        redirect: (context, state) async {
          final profile = await ref.read(findCurrentUserProfileProvider.future);
          // ToDo: if profile has error show error page
          if (profile != null) return HomeScreen.route;
          return null;
        },
        pageBuilder: (context, state) => NoTransitionPage(key: state.pageKey, child: const CreateProfileScreen()),
      ),
      GoRoute(
        name: GroupListScreen.name,
        path: GroupListScreen.route,
        pageBuilder: (context, state) => NoTransitionPage(key: state.pageKey, child: const GroupListScreen()),
      )
    ],
  );
}

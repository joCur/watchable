import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';
import 'package:watchable/src/features/autentication/presentation/login_screen.dart';
import 'package:watchable/src/features/groups/presentation/group_detail_screen.dart';
import 'package:watchable/src/features/groups/presentation/group_list_screen.dart';
import 'package:watchable/src/features/groups/presentation/group_members_screen.dart';
import 'package:watchable/src/features/profile/presentation/create_profile_screen.dart';
import 'package:watchable/src/features/home/presentation/home_screen.dart';
import 'package:watchable/src/features/tmdb/presentation/movie_detail_screen.dart';

import '../features/groups/domain/group.dart';
import '../features/profile/data/profile_repository.dart';
import '../features/tmdb/presentation/discover_screen.dart';
import 'go_router_refresh_stream.dart';
import 'navigation/scaffold_with_nested_navigation.dart';

part 'router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _homeShellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final _discoverShellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'discover');
final _groupShellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'groups');

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
        routes: [
          GoRoute(
            name: CreateProfileScreen.name,
            path: CreateProfileScreen.route,
            redirect: (context, state) async {
              final profile = await ref.read(findCurrentUserProfileProvider.future);
              if (profile != null) return HomeScreen.route;
              return null;
            },
            pageBuilder: (context, state) => NoTransitionPage(key: state.pageKey, child: const CreateProfileScreen()),
          ),
        ],
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => ScaffoldWithNestedNavigation(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            navigatorKey: _homeShellNavigatorKey,
            routes: [
              GoRoute(
                name: HomeScreen.name,
                path: HomeScreen.route,
                pageBuilder: (context, state) => NoTransitionPage(key: state.pageKey, child: const HomeScreen()),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _discoverShellNavigatorKey,
            routes: [
              GoRoute(
                name: DiscoverScreen.name,
                path: DiscoverScreen.route,
                pageBuilder: (context, state) => NoTransitionPage(key: state.pageKey, child: const DiscoverScreen()),
                routes: [
                  GoRoute(
                    name: MovieDetailScreen.name,
                    path: MovieDetailScreen.route,
                    pageBuilder: (context, state) => NoTransitionPage(
                      key: state.pageKey,
                      child: MovieDetailScreen(int.parse(state.pathParameters['id']!)),
                    ),
                  )
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _groupShellNavigatorKey,
            routes: [
              GoRoute(
                name: GroupListScreen.name,
                path: GroupListScreen.route,
                pageBuilder: (context, state) => NoTransitionPage(key: state.pageKey, child: const GroupListScreen()),
                routes: [
                  GoRoute(
                    name: GroupDetailScreen.name,
                    path: GroupDetailScreen.route,
                    pageBuilder: (context, state) => NoTransitionPage(
                      key: state.pageKey,
                      child: GroupDetailScreen(state.pathParameters['id']!, group: state.extra as Group?),
                    ),
                  ),
                  GoRoute(
                    name: GroupMembersScreen.name,
                    path: GroupMembersScreen.route,
                    pageBuilder: (context, state) => NoTransitionPage(
                      key: state.pageKey,
                      child: GroupMembersScreen(state.pathParameters['id']!),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    ],
  );
}

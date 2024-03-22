import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../startup/application/startup_providers.dart';
import '../domain/profile.dart';

part 'profile_repository.g.dart';

@riverpod
ProfileRepository profileRepository(ProfileRepositoryRef ref) {
  return ProfileRepository();
}

@riverpod
Future<Profile?> findCurrentUserProfile(FindCurrentUserProfileRef ref) async {
  final supabase = ref.watch(supabaseProvider);
  final profiles = ref.watch(profileRepositoryProvider);
  return profiles.findByIdAsync(supabase.auth.currentUser!.id);
}

@riverpod
Future<Profile> getProfileById(GetProfileByIdRef ref, String id) async {
  return ref.watch(profileRepositoryProvider).getByIdAsync(id);
}

class ProfileRepository {
  final supabase = Supabase.instance.client;
  final table = 'profiles';

  Future<List<Profile>> listByGroupIdAsync(String groupId) async {
    final response = await supabase.from(table).select("*, group_users!inner(user_id,group_id").eq('group_id', groupId);
    return response.map((e) => Profile.fromJson(e)).toList();
  }

  Future<Profile?> findByIdAsync(String id) async {
    final response = await supabase.from(table).select("*").eq('id', id).maybeSingle();
    return response == null ? null : Profile.fromJson(response);
  }

  Future<Profile> getByIdAsync(String id) async {
    final response = await supabase.from(table).select("*").eq('id', id).single();
    return Profile.fromJson(response);
  }

  Future<Profile> updateAsync(String id, String username, String? avatarUrl) async {
    final response = await supabase
        .from(table)
        .insert({
          'id': id,
          'username': username,
          'avatar_url': avatarUrl,
        })
        .select()
        .single();

    return Profile.fromJson(response);
  }

  Future deleteAsync(String id) async {
    await supabase.from(table).delete().eq('id', id);
  }
}

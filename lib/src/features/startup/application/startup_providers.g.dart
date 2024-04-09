// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'startup_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$supabaseHash() => r'd2c76c8455442fcc1da2405d92d2e55b47bcaeb6';

/// See also [supabase].
@ProviderFor(supabase)
final supabaseProvider = Provider<SupabaseClient>.internal(
  supabase,
  name: r'supabaseProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$supabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SupabaseRef = ProviderRef<SupabaseClient>;
String _$appStartupHash() => r'faa1937cfbd812a598a9cfb8be74c5492061fda1';

/// See also [appStartup].
@ProviderFor(appStartup)
final appStartupProvider = FutureProvider<void>.internal(
  appStartup,
  name: r'appStartupProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appStartupHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AppStartupRef = FutureProviderRef<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

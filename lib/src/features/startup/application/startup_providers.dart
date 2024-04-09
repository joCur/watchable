import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'startup_providers.g.dart';

@Riverpod(keepAlive: true)
SupabaseClient supabase(SupabaseRef ref) {
  return Supabase.instance.client;
}

@Riverpod(keepAlive: true)
Future<void> appStartup(AppStartupRef ref) async {
  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  OneSignal.initialize('31e94308-9c04-41b3-ab0e-c294782b763a');

  await Supabase.initialize(
    url: 'https://pbeufwibncnxlkgoxcjv.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiZXVmd2libmNueGxrZ294Y2p2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTgzNDc2NjYsImV4cCI6MjAxMzkyMzY2Nn0.a9zoyS9sb7HDTRhi_fxZbOmdX2d60YJFTzLlMwSZCKs',
  );
}

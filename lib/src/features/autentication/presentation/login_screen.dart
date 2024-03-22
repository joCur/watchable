import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';
import 'package:watchable/src/features/profile/presentation/create_profile_screen.dart';

import '../../../constants/app_sizes.dart';

class LoginScreen extends StatelessWidget {
  static const route = "/login";
  static const name = "Login";

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(Sizes.p24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SupaEmailAuth(
              redirectTo: kIsWeb ? null : "dev.curth.watchable://login-callback",
              onSignInComplete: (response) => context.goNamed(CreateProfileScreen.name),
              onSignUpComplete: (response) => context.goNamed(CreateProfileScreen.name),
            ),
          ],
        ),
      ),
    );
  }
}
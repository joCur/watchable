import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

import '../../../constants/app_sizes.dart';

class LoginScreen extends StatelessWidget {
  static const route = "/login";
  static const name = "Login";

  const LoginScreen({super.key});

  _authenticateSignalOne(AuthResponse response) {
    final userId = response.session!.user.id;
    OneSignal.login(userId);
  }

  @override
  Widget build(BuildContext context) {
    const redirectUrl = kIsWeb ? null : "dev.curth.watchable://login-callback";
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(Sizes.p24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SupaEmailAuth(
              redirectTo: redirectUrl,
              onSignInComplete: _authenticateSignalOne,
              onSignUpComplete: _authenticateSignalOne,
            ),
            SupaSocialsAuth(
              colored: false,
              socialProviders: const [OAuthProvider.google],
              redirectUrl: redirectUrl,
              showSuccessSnackBar: false,
              onSuccess: (_) {},
            ),
          ],
        ),
      ),
    );
  }
}

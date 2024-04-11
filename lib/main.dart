import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'src/app.dart';
import 'src/features/startup/presentation/app_startup_widget.dart';

void main() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();

    await SentryFlutter.init(
      (options) {
        options.dsn = "https://e6d3bd17fdf52cb2c9bf42b78ca64cce@o1394801.ingest.us.sentry.io/4507067862614016";
        options.environment = kDebugMode ? "Debug" : "production";
      },
      appRunner: () => runApp(
        EasyLocalization(
          supportedLocales: const [Locale("en", "US"), Locale("de", "DE")],
          fallbackLocale: const Locale("en", "US"),
          path: "assets/translation",
          useOnlyLangCode: false,
          child: ProviderScope(child: AppStartupWidget(onLoaded: (_) => const App())),
        ),
      ),
    );
  }, (error, stack) async {
    await Sentry.captureException(error, stackTrace: stack);
  });
}

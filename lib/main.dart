import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/constants/locale_keys.dart';

import 'src/app.dart';
import 'src/features/startup/presentation/app_startup_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  registerErrorHandlers();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale("en", "US")],
      fallbackLocale: const Locale("en", "US"),
      path: "assets/translation",
      useOnlyLangCode: false,
      child: ProviderScope(child: AppStartupWidget(onLoaded: (_) => const App())),
    ),
  );
}

void registerErrorHandlers() {
  // * Show some error UI if any uncaught exception happens
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    debugPrint(details.toString());
  };
  // * Handle errors from the underlying platform/OS
  PlatformDispatcher.instance.onError = (Object error, StackTrace stack) {
    debugPrint(error.toString());
    return true;
  };
  // * Show some error UI when any widget in the app fails to build
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return Material(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.red, title: Text(LocaleKeys.errors_unknown.tr())),
        body: Center(child: Text(details.toString())),
      ),
    );
  };
}

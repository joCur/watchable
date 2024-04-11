import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:in_app_update/in_app_update.dart';
import 'package:store_checker/store_checker.dart';
import 'package:watchable/src/features/common/application/application_language.dart';
import 'package:watchable/src/routing/one_signal_wrapper.dart';
import 'package:watchable/src/routing/router.dart';

import 'constants/locale_keys.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () => ref.read(applicationLanguageProvider.notifier).setLanguage(context.locale.languageCode));
  }

  void _checkForUpdate() async {
    if (Platform.isAndroid && await StoreChecker.getSource == Source.IS_INSTALLED_FROM_PLAY_STORE) {
      final updateAvailable = await InAppUpdate.checkForUpdate();
      if (updateAvailable.updateAvailability == UpdateAvailability.updateAvailable) {
        if (updateAvailable.immediateUpdateAllowed) {
          await InAppUpdate.performImmediateUpdate();
        } else if (updateAvailable.flexibleUpdateAllowed && await InAppUpdate.startFlexibleUpdate() == AppUpdateResult.success) {
          await InAppUpdate.completeFlexibleUpdate();
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    _checkForUpdate();

    final router = ref.watch(routerProvider);
    OneSignalWrapper.handleClickNotification(router);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      onGenerateTitle: (_) => LocaleKeys.app_title.tr(),
      routerConfig: router,
      theme: FlexThemeData.light(scheme: FlexScheme.jungle, useMaterial3: true, useMaterial3ErrorColors: true),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.jungle, useMaterial3: true, useMaterial3ErrorColors: true),
    );
  }
}

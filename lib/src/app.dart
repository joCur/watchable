import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/features/common/application/application_language.dart';
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      onGenerateTitle: (_) => LocaleKeys.app_title.tr(),
      routerConfig: ref.watch(routerProvider),
      theme: FlexThemeData.light(scheme: FlexScheme.jungle, useMaterial3: true, useMaterial3ErrorColors: true),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.jungle, useMaterial3: true, useMaterial3ErrorColors: true),
    );
  }
}

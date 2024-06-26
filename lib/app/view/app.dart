import 'package:ai_match_make_mobile_app/l10n/l10n.dart';
import 'package:ai_match_make_mobile_app/router/go_router.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      // supportedLocales: AppLocalizations.supportedLocales,
      supportedLocales: const [
        Locale('ja'),
      ],
      routerConfig: router,
    );
  }
}

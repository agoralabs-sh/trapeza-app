import 'package:flutter/material.dart';

import 'package:trapeza_app/constants/color_schemes.dart';
import 'package:trapeza_app/constants/titles.dart';
import 'package:trapeza_app/features/accounts/presentation/accounts_screen/accounts_screen_widget.dart';
import 'package:trapeza_app/generated/l10n/app_localizations.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        colorScheme: darkColorScheme,
        useMaterial3: true,
      ),
      home: const AccountsScreenWidget(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
          colorScheme: lightColorScheme,
          useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      title: appTitle,
    );
  }
}

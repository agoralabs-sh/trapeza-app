import 'package:flutter/material.dart';

import 'package:trapeza_app/constants/color_schemes.dart';
import 'package:trapeza_app/constants/titles.dart';
import 'package:trapeza_app/features/accounts/presentation/accounts_screen/accounts_screen_widget.dart';
import 'package:trapeza_app/generated/l10n/app_localizations.dart';
import 'package:trapeza_app/utilities/create_theme.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // metadata
      title: appTitle,

      // theming
      themeMode: ThemeMode.system,
      darkTheme: createTheme(context, darkColorScheme),
      highContrastDarkTheme: createTheme(context, darkHighContrastScheme),
      highContrastTheme: createTheme(context, lightHighContrastScheme),
      theme: createTheme(context, lightColorScheme),

      // localization
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

      // screens
      home: const AccountsScreenWidget(),
    );
  }
}

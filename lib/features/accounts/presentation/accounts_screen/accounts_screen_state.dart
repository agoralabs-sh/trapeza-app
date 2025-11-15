import 'package:flutter/material.dart';

import 'package:trapeza_app/common_widgets/bottom_navigation_bar/bottom_navigation_bar_widget.dart';
import 'package:trapeza_app/extensions/string_extension.dart';
import 'package:trapeza_app/features/accounts/presentation/accounts_screen/accounts_screen_widget.dart';
import 'package:trapeza_app/generated/l10n/app_localizations.dart';

class AccountScreenState extends State<AccountsScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(AppLocalizations.of(context)!.account(2).capitalize()),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}

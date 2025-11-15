import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'bottom_navigation_bar_item_widget.dart';
import 'bottom_navigation_bar_widget.dart';
import 'package:trapeza_app/extensions/string_extension.dart';
import 'package:trapeza_app/generated/l10n/app_localizations.dart';

class BottomNavigationBarState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      padding: EdgeInsets.only(top: 10, right: 15, left: 15),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavigationItemWidget(
            icon: FeatherIcons.list,
            isSelected: true,
            key: Key("${BottomNavigationItemWidget.elementName}--accounts"),
            onTap: () {
              print("clicked accounts");
            },
            label: AppLocalizations.of(context)!.account(2).capitalize(),
          ),
          Spacer(),
          BottomNavigationItemWidget(
            icon: FeatherIcons.creditCard,
            isSelected: false,
            key: Key("${BottomNavigationItemWidget.elementName}--cards"),
            onTap: () {
              print("clicked cards");
            },
            label: AppLocalizations.of(context)!.card(2).capitalize(),
          ),
          Spacer(),
          BottomNavigationItemWidget(
            icon: FeatherIcons.bell,
            isSelected: false,
            key: Key("${BottomNavigationItemWidget.elementName}--notifications"),
            onTap: () {
              print("clicked notifications");
            },
            label: AppLocalizations.of(context)!.notification(2).capitalize(),
          ),
        ],
      ),
    );
  }
}

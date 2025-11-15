import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:trapeza_app/common_widgets/bottom_navigation_bar/bottom_navigation_bar_item_widget.dart';
import 'package:trapeza_app/root.dart';

void main() {
  testWidgets('Contains the default items', (WidgetTester tester) async {
    await tester.pumpWidget(const Root());

    expect(find.byKey(Key('${BottomNavigationItemWidget.elementName}--accounts')), findsOneWidget);
    expect(find.byKey(Key('${BottomNavigationItemWidget.elementName}--cards')), findsOneWidget);
    expect(find.byKey(Key('${BottomNavigationItemWidget.elementName}--notifications')), findsOneWidget);
  });
}

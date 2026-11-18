// Basic widget tests for the Blinkit demo app.
//
// The default counter-app test that ships with `flutter create` doesn't
// apply here since this app has no counter or `MyApp` widget — it's a
// MainScreen with a bottom nav bar (Home / Categories / Orders / Cart).
// These tests check that the app boots and that tab switching works.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:blinkitd_emo/main.dart';

void main() {
  testWidgets('App boots and shows Home tab by default',
          (WidgetTester tester) async {
        await tester.pumpWidget(const BlinkitApp());
        await tester.pumpAndSettle();

        // Home tab content should be visible on launch.
        expect(find.text('Delivery in 8 minutes'), findsOneWidget);

        // Bottom nav should show all four tabs.
        expect(find.text('Home'), findsOneWidget);
        expect(find.text('Categories'), findsOneWidget);
        expect(find.text('Orders'), findsOneWidget);
        expect(find.text('Cart'), findsOneWidget);
      });

  testWidgets('Tapping Categories tab shows Categories content',
          (WidgetTester tester) async {
        await tester.pumpWidget(const BlinkitApp());
        await tester.pumpAndSettle();

        await tester.tap(find.text('Categories'));
        await tester.pumpAndSettle();

        expect(find.text('Shop by Category'), findsOneWidget);
      });

  testWidgets('Tapping Orders tab shows Orders content',
          (WidgetTester tester) async {
        await tester.pumpWidget(const BlinkitApp());
        await tester.pumpAndSettle();

        await tester.tap(find.text('Orders'));
        await tester.pumpAndSettle();

        expect(find.text('Orders Screen'), findsOneWidget);
      });

  testWidgets('Tapping Cart tab shows Cart content, then Home works again',
          (WidgetTester tester) async {
        await tester.pumpWidget(const BlinkitApp());
        await tester.pumpAndSettle();

        await tester.tap(find.text('Cart'));
        await tester.pumpAndSettle();
        expect(find.text('Cart Screen'), findsOneWidget);

        // This is the regression the earlier bug caused: switching back to
        // Home after visiting another tab should never show a blank screen.
        await tester.tap(find.text('Home'));
        await tester.pumpAndSettle();
        expect(find.text('Delivery in 8 minutes'), findsOneWidget);
      });
}
// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:savannah_tech01/src/login_screen.dart';

void main() {
  testWidgets('Button is not active when text field is empty',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: LoginScreen(),
      ),
    ));

    // Ensure the initial state of the button is inactive
    final Finder buttonFinder = find.byType(ElevatedButton);
    expect(buttonFinder, findsOneWidget);

    final ElevatedButton button = tester.widget(buttonFinder);
    expect(button.enabled, false);

    // Simulate typing in the text field
    final Finder textField = find.byType(TextFormField);
    expect(textField, findsOneWidget);
    await tester.tap(textField);
    await tester.enterText(textField, 'Password');

   
    await tester.pump();
    expect(button.enabled, false);
  });
}

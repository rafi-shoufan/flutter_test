import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'login.dart';

void main() {
  testWidgets('Login with valid credentials', (WidgetTester tester) async {
    await tester.pumpWidget(Login());

    final emailField = find.byType(TextFormField).at(0);
    await tester.enterText(emailField, 'test@example.com');

    final passwordField = find.byType(TextFormField).at(1);
    await tester.enterText(passwordField, 'password123');

    final loginButton = find.byType(Container);
    await tester.tap(loginButton);

    await tester.pump();

  });

  testWidgets('Login with invalid credentials', (WidgetTester tester) async {
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_pertemuan_2/main.dart';

void main() {
  testWidgets('MainScreen smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: MainScreen()));

    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Movie'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
  });
}
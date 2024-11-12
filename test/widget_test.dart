import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/main.dart';

void main() {
  testWidgets('BANSOSKU HomeScreen test', (WidgetTester tester) async {
    // Build the HomeScreen widget
    await tester.pumpWidget(MyApp());

    // Verify the title "BANSOSKU" is present
    expect(find.text('BANSOSKU'), findsOneWidget);

    // Verify that the "MULAI" button is present
    expect(find.text('MULAI'), findsOneWidget);

    // Verify that the button is an ElevatedButton widget
    expect(find.byType(ElevatedButton), findsOneWidget);

    // Tap the "MULAI" button and trigger a frame.
    await tester.tap(find.text('MULAI'));
    await tester.pump();

    // Optionally: Add more verification if tapping the button navigates or triggers something
    // Example: expect(find.text('NextScreenText'), findsOneWidget);
  });
}

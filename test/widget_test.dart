// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:medicare/widgets/round_button.dart';

void main() {
  testWidgets('Render Hello Button', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      RoundButton(
        title: "Hello", 
        onPressed: () {
        }
      )
    );

    expect(find.text('Hello'), findsOneWidget);
  });
}

// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:video_app/main.dart';
import 'package:video_app/presentation/screens/videos/another_screen.dart';
import 'package:video_app/presentation/screens/videos/new_screen.dart';

void main() {
  testWidgets('Tap the Get Image button', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // // Verify that our counter starts at 0.
    // expect(find.text('0'), findsOneWidget);
    // expect(find.text('1'), findsNothing);

    // // Tap the '+' icon and trigger a frame.
    // await tester.tap(find.byIcon(Icons.add));
    // await tester.pump();

    // // Verify that our counter has incremented.
    // expect(find.text('0'), findsNothing);
    // expect(find.text('1'), findsOneWidget);

    // expect(find.text('Calling Api'), findsOneWidget);
    // expect(find.byType(ElevatedButton), findsNWidgets(3));

    await tester
        .tap(find.text('Get Image')); //Finds the button and performs a tap.
    await tester.pump(); //moves a frame forward

    expect(find.byType(CircularProgressIndicator),
        findsOneWidget); //finds the circular progress indicator

    //If an image is taken, then the image should be displayed and if no image is taken, then the text should be displayed.
  });

  testWidgets(
      'Given when calling api button is pressed, navigate to the next page and when back button is pressed come back to the main page',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    await tester.tap(find.byKey(Key('api-button')));
    await tester.pumpAndSettle();
    expect(find.byType(AnotherScreen), findsOneWidget);
    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pumpAndSettle();
    expect(find.byType(NewScreen), findsOneWidget);
  });
}

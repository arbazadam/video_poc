import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:video_app/presentation/widgets/sample-container.dart';

void main() {
  testWidgets('testing the sample container', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SampleContainer(),
        ),
      ),
    );

    expect(find.byType(Container), findsOneWidget);
  });
}

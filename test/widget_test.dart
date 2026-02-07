import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:master_list/main.dart';

void main() {
  testWidgets('Master List app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the app title is displayed
    expect(find.text('Master List'), findsOneWidget);

    // Verify that the empty state message is shown
    expect(find.text('No items yet. Add one above!'), findsOneWidget);

    // Verify that the add button is present
    expect(find.byIcon(Icons.add), findsOneWidget);
  });

  testWidgets('Add item to list test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Find the text field and enter text
    await tester.enterText(find.byType(TextField), 'Test Item');
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that the item was added
    expect(find.text('Test Item'), findsOneWidget);
    expect(find.text('No items yet. Add one above!'), findsNothing);
  });

  testWidgets('Toggle item completion test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Add an item
    await tester.enterText(find.byType(TextField), 'Test Item');
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Find and tap the checkbox
    await tester.tap(find.byType(Checkbox));
    await tester.pump();

    // Verify that the checkbox is now checked
    final Checkbox checkbox = tester.widget(find.byType(Checkbox));
    expect(checkbox.value, true);
  });

  testWidgets('Delete item test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Add an item
    await tester.enterText(find.byType(TextField), 'Test Item');
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Find and tap the delete button
    await tester.tap(find.byIcon(Icons.delete));
    await tester.pump();

    // Verify that the item was deleted
    expect(find.text('Test Item'), findsNothing);
    expect(find.text('No items yet. Add one above!'), findsOneWidget);
  });
}

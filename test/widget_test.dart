
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inventory_sales_system/app/app.dart';

void main() {
  testWidgets('ProductView displays correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const App());

    // Verify that the ProductView title is displayed.
    expect(find.text('Product View'), findsOneWidget);

    // Verify that the product input field is displayed.
    expect(find.byType(TextField), findsOneWidget);

    // Verify that the Add Product button is displayed.
    expect(find.text('Add Product'), findsOneWidget);
  });
}
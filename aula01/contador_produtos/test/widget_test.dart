import 'package:contador_produtos/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('altera a quantidade e atualiza o total', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const ProdutoApp());

    expect(find.text('1'), findsOneWidget);
    expect(find.text('Total: R\$ 25.90'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('2'), findsOneWidget);
    expect(find.text('Total: R\$ 51.80'), findsOneWidget);
  });
}

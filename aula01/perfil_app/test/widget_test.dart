import 'package:flutter_test/flutter_test.dart';
import 'package:perfil_app/main.dart';

void main() {
  testWidgets('exibe as informações do perfil', (WidgetTester tester) async {
    await tester.pumpWidget(const MeuAplicativo());

    expect(find.text('Meu Perfil'), findsOneWidget);
    expect(find.text('Gabriel Cruz'), findsOneWidget);
    expect(find.text('Editar Perfil'), findsOneWidget);
  });
}

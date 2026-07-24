import 'package:flutter_test/flutter_test.dart';
import 'package:poolprox_app/main.dart';

void main() {
  testWidgets('La aplicación inicia correctamente', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const PoolProXApp());

    expect(find.text('POOLPROX'), findsOneWidget);
  });
}

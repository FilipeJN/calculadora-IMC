import 'package:calulcadora_imc_app/calulcadora_imc.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculaIMC(1.7, 60), 42);
  });
}

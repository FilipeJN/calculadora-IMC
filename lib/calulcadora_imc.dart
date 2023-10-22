import 'package:calulcadora_imc_app/models/pessoa.dart';
import 'package:calulcadora_imc_app/utils/console_utils.dart';

void calculadora(String nome) {
  Pessoa pessoa = Pessoa(nome);
  double? value;
  do {
    value = ConsoleUtils.lerDoubleComTexto("Digite sua altura");
    if (value != null) {
      pessoa.setAltura(value);

      do {
        value = ConsoleUtils.lerDoubleComTexto("Digite seu peso");
        if (value != null) {
          pessoa.setPeso(value);
          ConsoleUtils consoleUtils = ConsoleUtils();
          consoleUtils.exibeIMC(pessoa);
          break;
        }
      } while (value != null);
      break;
    }
  } while (value != null);
}

double calculaIMC(double altura, double peso) {
  return peso / (altura * altura);
}

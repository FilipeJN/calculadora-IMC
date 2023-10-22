import 'package:calulcadora_imc_app/calulcadora_imc.dart';
import 'package:calulcadora_imc_app/utils/console_utils.dart';

void execute() {
  String? nome = "";
  do {
    nome = ConsoleUtils.lerStringComTextoComSaida(
        "Digite seu nome ou S para sair", "S");
    if (nome != null && nome != "") {
      calculadora(nome);
    }
  } while (nome != null);
}

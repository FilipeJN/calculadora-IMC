import 'dart:convert';
import 'dart:io';

import 'package:calulcadora_imc_app/calulcadora_imc.dart';
import 'package:calulcadora_imc_app/pessoa.dart';

class ConsoleUtils {
  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static String lerStringComTexto(String texto) {
    print(texto);
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static String? lerStringComTextoComSaida(String texto, String textoSaida) {
    do {
      try {
        var value = lerStringComTexto(texto);
        if (value == textoSaida) {
          return null;
        }
        return value;
      } catch (e) {
        print(texto);
      }
    } while (true);
  }

  static double? lerDouble() {
    var value = lerString();
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

  static double? lerDoubleComTexto(String texto) {
    print(texto);
    return lerDouble();
  }

  static double? lerDoubleComTextoComSaida(String texto, String valorSaida) {
    do {
      try {
        var value = lerStringComTexto(texto);
        if (value == valorSaida) {
          return null;
        }
        return double.parse(value);
      } catch (e) {
        print(texto);
      }
    } while (true);
  }

  void exibeIMC(Pessoa pessoa) {
    var imc = calculaIMC(pessoa.getAltura(), pessoa.getPeso());
    print("Seu IMC é: $imc");
  }
}

import 'dart:convert';
import 'dart:io';

import 'package:calulcadora_imc_app/calulcadora_imc.dart';
import 'package:calulcadora_imc_app/models/pessoa.dart';

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

    if (imc < 16) {
      print("Você está com $imc de IMC, MUITO ABAIXO DO PESO");
    } else if (imc > 16 && imc < 17) {
      print("Você está com $imc de IMC, MAGREZA MODERADA");
    } else if (imc > 17 && imc < 18.5) {
      print("Você está com $imc de IMC, MAGREZA LEVE");
    } else if (imc > 18.5 && imc < 25) {
      print("Você está com $imc de IMC, SAUDÁVEL");
    } else if (imc > 25 && imc < 30) {
      print("Você está com $imc de IMC, SOBREPESO");
    } else if (imc > 30 && imc < 35) {
      print("Você está com $imc de IMC, OBESIDADE GRAU I");
    } else if (imc > 35 && imc < 40) {
      print("Você está com $imc de IMC, OBESIDADE GRAU II");
    } else if (imc >= 40) {
      print("Você está com $imc de IMC, OBESIDADE GRAU III");
    }
  }
}

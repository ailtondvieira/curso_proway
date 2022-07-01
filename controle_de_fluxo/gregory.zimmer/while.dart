import 'dart:io';

void main() {
  bool verificador = false;
  String? nome;

  while (verificador == false) {
    print('Por favor informe seu nome completo: ');
    nome = stdin.readLineSync()!;

    if (nome.length >= 6) {
      verificador = true;
    } else {
      print('Nome completo deve ter ao menos 6 caracteres');
    }
  }

  print('Nome completo cadastrado. Obrigado $nome.');
}

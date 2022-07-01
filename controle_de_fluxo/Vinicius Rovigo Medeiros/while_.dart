import 'dart:io';

void main() {
  int senha;
  print('Digite a senha');
  senha = int.parse(stdin.readLineSync()!);

  while (senha != 935153168615158548) {
    print('Você não tem permissão');
    print('Tente novamente');
    senha = int.parse(stdin.readLineSync()!);
  }
  print("Senha correta");
}
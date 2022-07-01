import 'dart:io';

void main() {
  String pais = 'Brasil';
  String moeda = '';

  switch (pais) {
    case 'Argentina':
      moeda = 'Peso Argentino';
      break;
    case 'Espanha':
      moeda = 'Euro';
      break;
    case 'Brasil':
      moeda = 'Real';
      break;
    default:
      moeda = 'Desconhecida';
  }

  print('O país é $pais');
  print('A moeda é $moeda');
  print('--------------');
  print('Digite o nome de um aluno:');
  String aluno = stdin.readLineSync() ?? 'João';
  print('$aluno : ');
  switch (aluno) {
    case 'Pedro':
      print('Nota : 10');
      break;
    case 'Julia':
      print('Nota : 4');
      break;
    case 'João':
      print('Nota : 2');
      break;
    default:
      print('Nota : 7');
  }
}

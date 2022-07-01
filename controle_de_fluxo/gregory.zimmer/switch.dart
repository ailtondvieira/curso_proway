import 'dart:io';

void main() {
  String? diaDaSemana = stdin.readLineSync()!;
  String diaUtil = '';

  switch (diaDaSemana) {
    case 'Domingo':
      diaUtil = 'não é';
      break;
    case 'Segunda-feira':
      diaUtil = 'é';
      break;
    case 'Terça-feira':
      diaUtil = 'é';
      break;
    case 'Quarta-feira':
      diaUtil = 'é';
      break;
    case 'Quinta-feira':
      diaUtil = 'é';
      break;
    case 'Sexta-feira':
      diaUtil = 'é';
      break;
    case 'Sábado':
      diaUtil = 'não é';
      break;
    default:
      diaUtil = 'Dia da semana informado não é válido.';
  }

  print('$diaDaSemana $diaUtil um dia útil.');
}

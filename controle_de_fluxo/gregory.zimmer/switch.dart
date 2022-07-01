import 'dart:io';

void main() {
  print('''Informe o dia da semana, conforme o menu abaixo
  1 - Domingo
  2 - Segunda-feira
  3 - Terça-feira
  4 - Quarta-feira
  5 - Quinta-feira
  6 - Sexta-feira
  7 - Sábado''');

  int? item = int.parse(stdin.readLineSync()!);
  String? diaDaSemana = '';
  String diaUtil = '';

  switch (item) {
    case 1:
      diaDaSemana = 'Domingo';
      diaUtil = 'não é';
      break;
    case 2:
      diaDaSemana = 'Segunda-feira';
      diaUtil = 'é';
      break;
    case 3:
      diaDaSemana = 'Terça-feira';
      diaUtil = 'é';
      break;
    case 4:
      diaDaSemana = 'Quarta-feira';
      diaUtil = 'é';
      break;
    case 5:
      diaDaSemana = 'Quinta-feira';
      diaUtil = 'é';
      break;
    case 6:
      diaDaSemana = 'Sexta-feira';
      diaUtil = 'é';
      break;
    case 7:
      diaDaSemana = 'Sábado';
      diaUtil = 'não é';
      break;
    default:
      diaUtil = 'Dia da semana informado não é válido.';
  }

  print('$diaDaSemana $diaUtil um dia útil.');
}

void main() {
  List<String> diaDaSemana = [
    'Domingo',
    'Segunda',
    'Terça',
    'Quarta',
    'Quinta',
    'Sexta',
    'Sábado'
  ];

  diaDaSemana.shuffle();

  switch(diaDaSemana[0]) {
    case 'Domingo':
      print('AFF, TÁ COMEÇANDO A SEMANA');
      break;
    case 'Segunda':
      print('COMEÇO ESSA PO-');
      break;
    case 'Terça':
      print('NINGUÉM SE IMPORTA COM A TERÇA');
      break;
    case 'Quarta':
      print('quarta é de boa até');
      break;
    case 'Quinta':
      print('VERSÃO PIORADA DE SEXTA');
      break;
    case 'Sexta':
      print('VERSÃO PIORADA DE SÁBADO');
      break;
    case 'Sábado':
      print('sábado :3');
      break;
    default:
      print('Que dia é esse? Não conheço, tomara que seja feriado.');
  }
}

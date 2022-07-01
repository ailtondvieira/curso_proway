void main() {
  String pais = 'Brasil';
  String moeda = '';

  switch (pais) {
    case 'Argentina':
      moeda = 'Peso Argentino';
      break;
    case 'Brasil':
      moeda = 'Real';
      break;
    case 'Peru':
      moeda = 'Soles';
      break;
    case 'Espanha':
      moeda = 'Euro';
      break;
    case 'USA':
      moeda = 'Dolar';
      break;
    default:
      moeda = 'Moeda de $pais desconhecido';
      break;
  }

  print('A moeda do $pais é $moeda');
}

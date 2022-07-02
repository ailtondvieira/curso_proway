void main() {
  String marca = 'Chevrolet';
  String modelo = '';

  switch (marca) {
    case 'Chevrolet':
      modelo = 'S10';
      break;
    case 'Fiat':
      modelo = 'Palio';
      break;
    case 'Volkswagem':
      modelo = 'Gol';
      break;

    default:
      modelo = '';
  }
  print('$marca $modelo');
}

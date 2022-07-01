void main() {
  String estadoAbrv = 'PR';
  String estado = '';

  switch (estadoAbrv) {
    case 'SC':
      print('Santa Catarina');
      break;
    case 'RS':
      print('Rio Grande do Sul');
      break;
    case 'PR':
      print('Parana');
      break;
    default:
      estado = 'Inválido';
  }
}
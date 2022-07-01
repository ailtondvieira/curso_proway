void main() {
  String pais = 'Brasil';
  String moeda = '';
  switch (pais) {
    case 'USA':
      moeda = 'Dólar Americano';
      break;
    case 'Argentina':
      moeda = 'Peso Argentino';
      break;
    case 'Brasil':
      moeda = 'Reais';
      break;
    default:
      moeda = 'Desconhecida';
  }
  //print('O país é $pais.');
  // print('A moeda é $moeda.');
  //Criar o seu próprio switch

  String restaurante = 'Pizzaria';
  String comida = '';
  switch (restaurante) {
    case 'Hamburgueria':
      comida = 'Hamburguer';
      break;
    case 'Temakeria':
      comida = 'Temaki';
      break;
    case 'Pizzaria':
      comida = 'Pizza';
      break;
    case 'Churrascaria':
      comida = 'Churrasco';
      break;
    default:
      comida = 'algo desconhecido';
  }

  print('O restaurante escolhido foi: $restaurante.');
  print('Você irá comer $comida.');
}

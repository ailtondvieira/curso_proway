void main() {

  // exercicio switch
  String corPreferida = 'Verde';
  String decoracaoFesta;

  switch (corPreferida) {
    case 'Preta':
      decoracaoFesta = 'Vampiro';
      break;
    case 'Azul':
      decoracaoFesta = 'Oceano';
      break;
    case 'Verde':
      decoracaoFesta = 'Floresta / Animais';
      break;
    case 'Amarelo':
      decoracaoFesta = 'Girassol';
      break;
    default:
      decoracaoFesta = 'Sem decoração';
  }

  print('A decoração da sua festa de aniversário será de $decoracaoFesta!');

  
  // exemplo do professor
  String pais = 'Brasil';
  String moeda;
  
  switch (pais) {
    case 'Argentina':
      moeda = 'Peso argentino';
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

  print('O país é $pais e a moeda desse país é $moeda.');
}
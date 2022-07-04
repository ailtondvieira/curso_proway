void main() {
  List nomes = ['Gregory', 'Paola', 'Anna'];

  List idades = [0, 1, 2];

  List tudoJuntos = ['Novo valor', ...nomes, 'Outro valor', ...idades];

  print(tudoJuntos);
}

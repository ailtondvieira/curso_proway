void main() {
  for (int contador = 1; contador <= 50; contador++) {
    print('Contando... $contador');
  }

  List<String> nomes = [
    'João',
    'Pedro',
    'Maria',
    'Julia',
  ];
  List<String> sobrenomes = [
    'Silva',
    'Pereira',
    'Carvalho',
    'Muller',
  ];
  List<String> nomesCompletos = [];

  for (int i = 0; i < nomes.length; i++) {
    for (int j = 0; j < sobrenomes.length; j++) {
      nomesCompletos.add(nomes[i] + " " + sobrenomes[j]);
    }
  }
  print(nomesCompletos);
}

import 'dart:math';

void main() {
  print('Quantas pessoas faltaram e quantas vieram na aula hoje?');

  Map<String, dynamic> pessoal = {
    "André Martins" : Random().nextInt(5),
    "Anna Roncalio" : Random().nextInt(5),
    "Carlos Casanova" : Random().nextInt(5),
    "Douglas Fidelis" : Random().nextInt(5),
    "Felipe Bortolini" : Random().nextInt(5),
    "Gregory Zimmer" : Random().nextInt(5),
    "Guilherme Maia" : Random().nextInt(5),
    "Henrique Cardoso" : Random().nextInt(5),
    "Julia Luciani" : Random().nextInt(5),
    "Léo Althoff" : Random().nextInt(5),
    "João Arruda" : Random().nextInt(5),
    "Luan Gustavo" : Random().nextInt(5),
    "Lucas Mascarello" : Random().nextInt(5),
    "Guilherme Pedro" : Random().nextInt(5),
    "Natalia Fontes" : Random().nextInt(5),
    "Nilvando Fonseca" : Random().nextInt(5),
    "Paola Poffo" : Random().nextInt(5),
    "Matheus Pitsch" : Random().nextInt(5),
    "Rodrigo Franco" : Random().nextInt(5),
    "Suelen Laís" : Random().nextInt(5),
    "Victor Hugo" : Random().nextInt(5),
    "Vinícius Bressanini" : Random().nextInt(5),
    "Vinícius Rovigo" : Random().nextInt(5),
    "Vitor Mendes" : Random().nextInt(5),
    "William" : Random().nextInt(5),
    };

  for(String k in pessoal.keys) {
    print("$k: ${(pessoal[k] == 0) ? 'Atrasado' : 'Presente'}");
  }  
  }

void main () {
  //String nome = "Vocês são fodas";
  //String nome = "Vocês são fodas";
  //String nome = "Vocês são fodas";
  //String nome = "Vocês são fodas";
  //String nome = "Vocês são fodas";
  //TODO: Isso precisa ser alterado

  // Tipo do dado - Atributo - Valor

  String nome = "Paola Poffo";

  print(nome);
  print(nome.toLowerCase()); // Fica tudo em minúsculo
  print(nome.toUpperCase()); // Fica tudo em maiúsculo
  print(nome.toString()); // Converte em string
  print(nome.trim()); // Tira os espaços do começo e fim (tem left e right)
  print(nome.contains("P")); // Faz as verificações pré definidas

  List<String> retorno = nome.split("");   // Faz o retorno atráves de uma lista com um valor pré definido
  print(retorno);
  print(nome.indexOf("Paola"));
  nome = nome.replaceAll("Paola", "Olá"); //altera a palavra por outra
  nome = nome.replaceFirst("Paola", "Olá"); //alterna o primeiro valor
  print (nome.endsWith("ola")); //traz o valor em boleano se acaba com determinado valor
  print (nome.substring(2,4)); //traz o valor em boleano se acaba com determinado valor

}
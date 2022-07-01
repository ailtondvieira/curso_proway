void main() {
  String nomeCompleto = 'Carlos';
  print(nomeCompleto.toLowerCase()); //Tudo para minusculo
  print(nomeCompleto.toUpperCase()); //Tudo para maiusculo
  print(nomeCompleto.toString()); // Transforma para String
  print(nomeCompleto.trim()); // Tira os espaços no começo e fim
  print(nomeCompleto
      .contains('4')); // Verificar se a String contém a letra passada
  nomeCompleto.split('3');
  List<String> retorno =
      nomeCompleto.split(''); // Desta maneira separa cada letra em array
  print(retorno);
  print(nomeCompleto.indexOf('l')); //Retorna a posição do valor procurado
  // substring recebe dois parametros "start" e "end"
  // "start" é inclusivo e a do "end" exclusivo
  // Ele vai começar a cortar no start e finalizar uma posição antes do end
  // se não e dado um "end" ele vá até o último
  print(nomeCompleto.substring(3));
  print(nomeCompleto.substring(2, 4));
}

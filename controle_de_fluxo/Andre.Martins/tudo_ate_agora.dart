void main() {
  String nomeCompleto = 'André';
  nomeCompleto = 'Vocês são incríveis são';

  print(nomeCompleto.toLowerCase());  // Torna minusculo
  print(nomeCompleto.toUpperCase());  // Torna maiusculo
  print(nomeCompleto.toString());  //Transforma o valor em String 
  print(nomeCompleto.trim());   //Tira os espaços do começo e do fim
  print(nomeCompleto.isEmpty);    //Verifica se é vázio
  print (nomeCompleto.contains('c'));
  List<String> retorno = nomeCompleto.split('');
  print(retorno);
  print(nomeCompleto.indexOf('são'));
  print(nomeCompleto.replaceAll('são', 'are'));
  print(nomeCompleto.replaceFirst('são', 'are'));
  print(nomeCompleto.endsWith('são'));
  print(nomeCompleto.substring(6,9));

}
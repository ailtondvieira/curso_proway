void main() {
//comentario de varias linha => ctrl + ;
// TODO: comentatario com destaque;

  print('Olá mundo');
  String nomeDaVariavel = ' ok,variavel,teste,ok';

  print(nomeDaVariavel.toLowerCase()); //Tudo maiúsculo
  print(nomeDaVariavel.toUpperCase()); //Tudo maiusculo
  print(nomeDaVariavel.toString()); //Converte para String
  print(
      'teste${nomeDaVariavel.trim()}teste'); //Remove espaços do inicio e do fim
  print(nomeDaVariavel.contains('r')); //Retona se contem tal paramentro
  List<String> retorno = nomeDaVariavel
      .split(','); //Separa a string de acordo com o parametro passado
  print(retorno);
  print(nomeDaVariavel.indexOf('t'));
  print(nomeDaVariavel.replaceAll('teste', 'TROCOU'));
  print(nomeDaVariavel.replaceFirst('ok', 'TROCOU'));
  print(nomeDaVariavel.substring(4, 8));
}

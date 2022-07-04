void main() {
  num numero = 1;
  int numeroInt = 2;
  double numeroDouble = 3.0;

  String texto = 'texto';
  String variasLinhas = '''
  varias
  linhas
 ''';

  List dinamica = [
    12,
    'douglas',
    true,
  ];

  List<int> listaNumero = [1, 2, 3];
  List listaComListas = [
    [1, 'texto'],
    [2, true]
  ];

  Set meuSetDinamico = {'Douglas', 'Pamela', 1}; //não podem ter itens repetidos
  Set<String> meuSetDeString = {
    'Douglas',
    'Pamela'
  }; //não podem ter itens repetidos

  Map mapDinamico = {'1': 'Douglas', 1: 'Pamela'};
  Map<int, String> mapTipado = {1: 'Guto', 2: 'Toni'};

  var result = <String, dynamic>{};
  result.addAll({'nome': 'Douglas'});
  result.addAll({'idade': 32});
}

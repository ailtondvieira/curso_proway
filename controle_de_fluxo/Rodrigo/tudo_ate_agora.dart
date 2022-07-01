void main() {
  // String nome = 'Vocês são fodas';
  // String nome = 'Vocês são fodas';
  // String nome = 'Vocês são fodas';
  // String nome = 'Vocês são fodas';
  // String nome = 'Vocês são fodas';
  // String nome = 'Vocês são fodas';
  // TODO: Isso precisa ser arrumado;
  print('Olá mundo');
  String nomeCompleto = 'Rodrigo';
  nomeCompleto = 'Voces São Incríveis São';

  nomeCompleto = nomeCompleto.toUpperCase();
  print(nomeCompleto.toLowerCase());
  print(nomeCompleto.toUpperCase());
  print(nomeCompleto.toString());
  print(nomeCompleto.trim());
  print(nomeCompleto.contains('o'));
  print(nomeCompleto.contains('O'));
  List<String> retorno = nomeCompleto.split('');
  print(retorno);
  print(nomeCompleto.indexOf('SÃO'));
  print(nomeCompleto.replaceAll('SÃO', 'Sempre'));
  print(nomeCompleto.replaceFirst('SÃO', 'Sempre'));
  print(nomeCompleto.endsWith('SÃO'));
  print(nomeCompleto.substring(3, 10));
  print(nomeCompleto[0]);
}

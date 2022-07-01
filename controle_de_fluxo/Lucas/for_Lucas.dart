import 'dart:io';
void main() {
  print("Informe um número máximo para o contador: ");
  String? leitor = stdin.readLineSync();
  int numeroMax = int.parse(leitor!);
  int contador = 0;
  for (int i = 0; i < numeroMax; i++) {
      contador++;
      print("Contando: $contador");
  }
}

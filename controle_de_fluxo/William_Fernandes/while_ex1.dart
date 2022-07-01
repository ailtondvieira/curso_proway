import 'dart:io';

void main() {

int contador = 1;
int somaTotal = 0;

while(contador<=5){
  print('Digite um número: ');
  int num = int.parse(stdin.readLineSync().toString());

  somaTotal +=  num;


  contador++;
}

print('A soma total é : $somaTotal');





}
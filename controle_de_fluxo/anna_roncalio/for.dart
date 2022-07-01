import 'dart:math';
import 'dart:io';

void main() {

  //exercicio for
  print('Quantas vezes você quer jogar o dado?');
  
  int inputNumber = int.parse(stdin.readLineSync()!);

  List<int> dice = [1, 2, 3, 4, 5, 6];

  List<int> diceRolls = [];

  int countRolls;

  for (countRolls = 0; countRolls < inputNumber; countRolls++) {
    
    int result = dice[Random().nextInt(dice.length)];

    diceRolls.add(result);
  }

  print('De $inputNumber jogadas, qual jogada do dado você quer utilizar?');
  int newInputNumber = int.parse(stdin.readLineSync()!);

  print('O resultado do dado foi ${diceRolls.elementAt(newInputNumber)}!');
  
  // exemplo do professor
  for(int contador = 1; contador < 50; contador++) {
    print('Contando... $contador');
  }
}
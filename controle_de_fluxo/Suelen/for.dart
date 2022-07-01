//For

void main(){
  int contador = 1;

  for(int contador = 1; contador <= 50; contador++){ // a primeira parte é a variável, depois a condição e por último o incremento
      print('Contando.. $contador');
      if(contador == 20){
        break; // Para aqui com a condição imposta no if
      }
  }

  // Do While

  // do {
  //   print('Contando...$contador');
  //   contador++;

  // }while (contador <=50);
}
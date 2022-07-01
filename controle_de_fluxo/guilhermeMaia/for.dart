void main() {
  
  int diasParaReceber = 30;
  int diasDoMes = 30;

  for (int index = 0; index < diasDoMes; index++) {
    diasParaReceber--;
    if (diasParaReceber == 0) {
      print ('Eba, caiu o seu salário');
    } else {
      print('Que pena, ainda faltam $diasParaReceber para você receber seu salário D:');
    }
  }

}
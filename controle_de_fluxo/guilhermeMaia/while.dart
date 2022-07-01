void main () {
  int pontosParaChegar = 20;
  while (pontosParaChegar >= 0) {
    if (pontosParaChegar == 0) {
      print ('Você está á $pontosParaChegar pontos de descer');
      print('Você chegou, pode descer do ônibus');
      break;
    } else {
    print('Faltam $pontosParaChegar pontos para descer do ônibus');
    pontosParaChegar--;
    }
    
  } 
}
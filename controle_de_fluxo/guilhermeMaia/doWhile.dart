void main () {

  int dinheiroNaConta = 1000;

  do {
    dinheiroNaConta += 10;
    print('Você tem $dinheiroNaConta reais na conta, ainda não chegou em 2000.');
    if (dinheiroNaConta == 2000) {print('Uau, você tem 2000 reais na conta');}
  } while (dinheiroNaConta < 2000);

}
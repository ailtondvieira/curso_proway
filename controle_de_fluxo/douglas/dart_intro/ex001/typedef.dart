void main(List<String> args) {
  void somar(valor1, valor2) {
    print('A soma deu ${valor1 + valor2}');
  }

  void multiplicar(valor1, valor2) {
    print('A multiplicação deu ${valor1 * valor2}');
  }

  void subtrair(valor1, valor2) {
    print(valor1 - valor2);
  }

  Calculadora calc = somar;
  calc(10, 20);

  calc = multiplicar;
  calc(3, 15);

  calc = subtrair;
  calc(50, 2);
}

typedef Calculadora = Function(double valor1, double valor2);

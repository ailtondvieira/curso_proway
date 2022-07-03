void main() {
  Phone apple = Phone('gray', 'apple', 5.7);
  apple.charge = 98.7;
  print(apple.chargeStatus());
}

//Classes iniciam com letra maiuscula e nao tem parenteses
class Phone {
  //Atributos funcionam da mesma forma que as variaveis
  String? color;
  double? size;
  String? model;
  double? charge;

  //Construtores tem o mesmo nome das classes e tem parenteses
  Phone(this.color, this.model, this.size);
  //Metodos começam com letra minuscula e tem parenteses, poder possuir ou nao retornos
  String chargeStatus() {
    return 'The $model phone, have ${charge?.floor()}% of battery';
  }
}

void main(List<String> args) {
  Ailton ailton = Ailton();
  ailton.bebe();
  ailton.coding();
  ailton.come();
}

class People {
  String? nome;
  String? cpf;
  int? idade;

  void come() {
    print("sua mãe");
  }

  void bebe() {
    print("Lean");
  }
}

class Ailton extends People with Code {}

class Maria extends People {}

class Pedro extends People with Code {}

mixin Code {
  void coding() {}
}

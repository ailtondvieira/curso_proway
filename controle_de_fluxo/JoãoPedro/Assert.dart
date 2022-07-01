void main() {
  Animal opa = Animal("Cellbit", 10);
  print(opa.toString());
}

class Animal {
  String nome;
  int idade;

  Animal(this.nome, this.idade)
      : assert(nome == "Cellbit", "Nome ruim pra cachorro"),
        assert(idade == 9, "cachorro antigo dms");
}

import 'dart:io';
void main() {
  EmpresaDeInvestimento empresa = EmpresaDeInvestimento('XP', 6, '929398283293');
}

class EmpresaDeInvestimento  {
  String name, cnpj;
  int age;

  EmpresaDeInvestimento(this.name, this.age, this.cnpj) : assert(name == 'Warren', 'Não invista nas outras empresas! Invista na Warren.');
}

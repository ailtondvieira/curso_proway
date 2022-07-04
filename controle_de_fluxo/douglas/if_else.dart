void main() {
  double inicioAula = 8;
  double horaDeChegada = 8;
  bool transitoCongestionado = false;
  bool aconteceuAcidente = false;
  String? chamada;

  Motorista barbeiro = Motorista();

  aconteceuAcidente = barbeiro.acidente();

  if (aconteceuAcidente) {
    transitoCongestionado = true;
    horaDeChegada = 8.10;
  }
  if (horaDeChegada > 8) {
    chamada = 'atrasado';
  } else {
    chamada = 'presente';
  }

  print(chamada);
}

class Motorista {
  acidente() {
    return true;
  }
}

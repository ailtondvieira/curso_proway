// //Inversão de Dependência

// void main(List<String> args) {
//   Espada espada = Espada();
//   espada.atacar();
//   LojaArmas(armas: espada);
// }

// abstract class Armas {
//   void atacar();
// }

// class Espada implements Armas {
//   void atacar() {}
// }

// class Lanca implements Armas {
//   void atacar() {}
// }

// class LojaArmas {
//   Armas armas;

//   LojaArmas({
//     required this.armas,
//   });
// }

// //-----------------------------------------------------------------------------------------------------------------------------------------------------------

// //Segregação de Interfaces

// void main(List<String> args) {
//   Espada espada = Espada();
//   espada.atacar();
//   espada.esquentar();
//   Estilingue estilingue = Estilingue();
//   estilingue.atacar();
//   LojaArmas(armas: estilingue);
//   LojaArmas(armas: espada);
// }

// abstract class Armas {
//   void atacar();
// }

// abstract class ArmasMetal extends Armas {
//   void esquentar();
// }

// class Espada implements ArmasMetal {
//   void atacar() {}

//   void esquentar() {}
// }

// class Lanca implements ArmasMetal {
//   void atacar() {}

//   void esquentar() {}
// }

// class Estilingue implements Armas {
//   void atacar() {}
// }

// class LojaArmas {
//   Armas armas;

//   LojaArmas({
//     required this.armas,
//   });
// }

// //-----------------------------------------------------------------------------------------------------------------------------------------------------------

// //Substituição de Liskov

// void main(List<String> args) {
//   Espada espada = Espada();
//   espada.atacar();
//   espada.esquentar();
//   Estilingue estilingue = Estilingue();
//   estilingue.atacar();
//   Arremessador arremessador = Arremessador();
//   arremessador.atacar();
//   LojaArmas(armas: arremessador);
//   LojaArmas(armas: estilingue);
//   LojaArmas(armas: espada);
// }

// abstract class Armas {
//   void atacar();
// }

// abstract class ArmasMetal extends Armas {
//   void esquentar();
// }

// class Espada implements ArmasMetal {
//   void atacar() {}

//   void esquentar() {}
// }

// class Lanca implements ArmasMetal {
//   void atacar() {}

//   void esquentar() {}
// }

// class Arremessador implements Armas {
//   void atacar() {}
// }

// class Estilingue extends Arremessador {
//   void atacar() {}
// }

// class LojaArmas {
//   Armas armas;

//   LojaArmas({
//     required this.armas,
//   });
// }

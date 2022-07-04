//#Crie uma lista de Sets, e os itens desses Sets sao maps de 1 iten

import 'dart:ffi';

void main() {
  Map<int, String> map1 = {1: 'Douglas'};
  Map<int, String> map2 = {2: 'Pamela'};
  Map<int, String> map3 = {3: 'Anthoni'};

  Set<Map> setDeMaps1 = {};

  setDeMaps1.add(map1);
  setDeMaps1.add(map2);
  setDeMaps1.add(map3);

  List<Set> listaDeSets = [];
  listaDeSets.add(setDeMaps1);

  print(listaDeSets[0].elementAt(2));
}

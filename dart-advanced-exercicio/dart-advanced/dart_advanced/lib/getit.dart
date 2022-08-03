import 'package:dart_advanced/main.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.I;

void main(List<String> args) {
  setupGetIt();
  runApp(
    const MaterialApp(
      home: Main(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

void setupGetIt() {
  // getIt.registerSingleton<AppModel>(AppModel());
  getIt.registerFactory(() => Modelo());
  getIt.registerFactory(() => AppModel());
}

class AppModel {
  String userName = "Renan";
  String dateTemp = "11 de agosto de 1218";
}

class Modelo {
  String userName = "Cellbit";
  String dateTemp = "11 de Fevereiro de 1997";
}

import 'package:flutter/material.dart';

import 'presenter/home/home.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      title: "App Treinando",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

import 'package:flutter/material.dart';

import 'main.dart';
import 'presenter/home/home.dart';
import 'presenter/page2/page2.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      title: "App Treinando",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}


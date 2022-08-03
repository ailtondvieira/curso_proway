import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
    home: const HomePage(title: "Animation Implicit"),
    theme: ThemeData(
      backgroundColor: Colors.white,
    ),
    debugShowCheckedModeBanner: false,
  ));
}

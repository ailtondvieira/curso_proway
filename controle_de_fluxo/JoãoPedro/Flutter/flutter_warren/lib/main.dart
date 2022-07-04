import 'dart:html';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(0, 0, 0, 0),
          title: const Text("Aplicativo",
              style: TextStyle(
                  fontSize: 15, color: Color.fromARGB(255, 255, 255, 255)))),
      body: const Center(
        child: Text("Olá Mundo",
            style:
                TextStyle(fontSize: 15, color: Color.fromARGB(255, 255, 0, 0))),
      ),
    );
  }
}

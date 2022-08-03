import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);

  static const route = '/page-three';

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text("Página 3"),
    ));
  }
}

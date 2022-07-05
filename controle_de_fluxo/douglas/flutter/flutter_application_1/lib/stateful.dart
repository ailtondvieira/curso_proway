import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MainWidget(title: 'teste2'));
}

class MainWidget extends StatelessWidget {
  final String title;

  const MainWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  List<String> images = [
    'https://i.pinimg.com/236x/06/a9/fd/06a9fdb95004685bea8418b364912414.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeRSe30Z1wOAcSvbpqAy95FrWDDutr2N-HGA&usqp=CAU',
    'https://i.pinimg.com/236x/06/a9/fd/06a9fdb95004685bea8418b364912414.jpg'
  ];
  var randoIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
      child: Image.network(images[randoIndex]),
      onTap: () {
        setState(() {
          randoIndex = 1;
        });
        ;
      },
    ));
  }
}

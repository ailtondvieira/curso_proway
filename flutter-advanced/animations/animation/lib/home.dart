import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isClicked = false;
  Random random = Random();

  void changeClicked() {
    isClicked = !isClicked;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 25,
              child: ElevatedButton(
                onPressed: () {
                  changeClicked();
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                ),
                child: const Text('Aumentar/Diminuir'),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            AnimatedContainer(
              curve: Curves.easeIn,
              duration: const Duration(milliseconds: 500),
              height: isClicked
                  ? random.nextDouble() *
                      (MediaQuery.of(context).size.height - 50)
                  : 75,
              width: isClicked
                  ? random.nextDouble() * MediaQuery.of(context).size.width
                  : 75,
              color: isClicked
                  ? Color.fromARGB(255, random.nextInt(255),
                      random.nextInt(255), random.nextInt(255))
                  : Colors.black,
              transform: Matrix4.rotationX(isClicked ? random.nextDouble()*pi : 0)
              ..rotateY(isClicked ? random.nextDouble()*360 : 0),
            ),
          ],
        ),
      ),
    );
  }
}

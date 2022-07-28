// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MApp());
}

class MApp extends StatelessWidget {
  const MApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pointers"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Listener(
            onPointerDown: (event) {
              print("down ${event.position}");
              print("down ${event.kind}");
            },
            onPointerMove: (event) {
              print("move ${event.position}");
            },
            onPointerUp: (event) {
              print("up ${event.position}");
            },
            onPointerCancel: (event) {
              print("cancel ${event.position}");
            },
            onPointerHover: (event) {
              print("hover ${event.position}");
            },
            onPointerSignal: (event) {
              print("signal ${event.position}");
            },
            child: Container(
              height: 200,
              width: 200,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              print("a");
            },
            onDoubleTap: () {
              print("bah");
            },
            onLongPress: () {
              print("hab");
            },
            onSecondaryTap: () {
              print("bahbah");
            },
            child: Container(
              height: 200,
              width: 200,
              color: Colors.black,
            ),
          ),
        ],
      )),
    );
  }
}

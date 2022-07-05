import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: Text(
          "Colocando Containers",
          style: TextStyle(
            fontSize: 15,
            color: const Color.fromARGB(255, 255, 255, 255),
            decoration: TextDecoration.combine(
              [
                TextDecoration.lineThrough,
                TextDecoration.overline,
                TextDecoration.underline
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            width: 100,
            height: 100,
          ),
          Row(
            children: [
              Container(
                height: 200,
                width: 200,
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 0, 0),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red.shade800,
                      blurRadius: 2,
                      spreadRadius: 6,
                      offset: const Offset(2, 6),
                      blurStyle: BlurStyle.solid,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.ac_unit_sharp),
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text("100 graus"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 100,
                      width: 100,
                    ),
                    Text(
                      "Eita",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade900,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

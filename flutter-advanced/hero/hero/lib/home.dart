import 'package:flutter/material.dart';
import 'package:hero/view_image_home.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: InkWell(
          onTap: (() {
            Navigator.of(context).push(
                MaterialPageRoute(builder: ((context) => const ViewImageHome())));
          }),
          child: Hero(
            tag: 'img1',
            child: Image.network(
              "https://i.pinimg.com/originals/de/1e/0d/de1e0dceb6077feaead0772b224513d9.jpg",
              height: 350,
            ),
          ),
        )));
  }
}

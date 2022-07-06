import 'package:flutter/material.dart';
import 'package:flutter_warren/core/app_assets.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.asset(imgUndraw),
          const Text('teste font', style: TextStyle(
            fontFamily: 'Schuyler',
            fontSize: 28,
          ),),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

// void main() {
//   runApp(MainWidget(title: 'teste2'));
// }

class MainWidget extends StatelessWidget {
  final String title;

  const MainWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.amber,
        child: Center(
          child: Text(
            title,
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 50, color: Colors.black87),
          ),
        ));
  }
}

import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     title: 'Orçamentos',
//     home: HomePage(),
//   ));
// }

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orçamentos'),
      ),
      body: Column(
        children: const [
          Text('Texto1'),
        ],
      ),
    );
  }
}

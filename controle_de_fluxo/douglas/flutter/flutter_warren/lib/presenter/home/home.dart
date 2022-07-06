import 'package:flutter/material.dart';

import '../page2/page2.dart';
import 'widgets/body_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("App Desafio1"),
      //   actions: [
      //     IconButton(
      //       onPressed: () {
      //         Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      //           return const Page2();
      //         }));
      //       },
      //       icon: const Icon(
      //         Icons.keyboard_arrow_right,
      //         size: 40,
      //       ),
      //     ),
      //   ],
      // ),

      //backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: BodyHome(),
      
    );
  }
}

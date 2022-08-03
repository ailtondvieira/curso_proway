import 'package:flutter/material.dart';
import 'page_three.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  static const route = '/page-two';

  @override
  Widget build(BuildContext context) {
    Object? oi = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Two"),
      ),
      body: Center(
        child: Center(
          child: ElevatedButton(
              onPressed: (() {
                Navigator.of(context).pushNamed(PageThree.route);
              }),
              child: oi as Widget),
        ),
      ),
    );
  }
}

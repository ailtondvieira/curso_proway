import 'package:flutter/material.dart';
import 'page_two.dart';

import 'core/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        initialRoute: MyHomePage.route,
        routes: appRoutes,
        onUnknownRoute: unknownRoute);
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  static const route = '/';

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.3,
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const PageTwo(),
                    ),
                  );
                },
                child: const Text("Page 2 (1)"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(PageTwo.route,
                      arguments: const Text("página main é melhor"));
                },
                child: const Text("Page 2 (2)"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("saaasassasasasasasasas",
                      arguments: const Text("página main é melhor"));
                },
                child: const Text("Page 2 (3)"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

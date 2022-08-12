import 'dart:async';

import 'package:flutter/material.dart';

import '../movies/movies_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1)).then(
      (value) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const MoviesPage(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Revisão',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 214, 32, 90),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(
                Color.fromARGB(255, 214, 32, 90),
              ),
              strokeWidth: 6.0,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'widgets/body_movies_page.dart';

// 53b9d940b2d4d2199b4e18d0a05f3d52

class MoviesPage extends StatelessWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
      ),
      body: const BodyMoviesPage(),
    );
  }
}

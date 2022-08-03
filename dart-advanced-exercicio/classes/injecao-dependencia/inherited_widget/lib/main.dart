import 'package:flutter/material.dart';

import 'core/app_getit.dart';
import 'presenter/home/home_page.dart';

void main() {
  setupGetIt();
  runApp(
    const MaterialApp(
      title: "AppTreino",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

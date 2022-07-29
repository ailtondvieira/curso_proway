import 'package:flutter/material.dart';

import '../main.dart';
import '../page_three.dart';
import '../page_two.dart';
import '../unknown_page.dart';

Map<String, WidgetBuilder> appRoutes = {
  MyHomePage.route: (context) => const MyHomePage(title: "Main Page"),
  PageTwo.route: (context) => const PageTwo(),
  PageThree.route: (context) => const PageThree(),
};

MaterialPageRoute<dynamic> Function(dynamic) unknownRoute = (context) {
  return MaterialPageRoute(
    builder: (context) => const UnknownPage(),
  );
};

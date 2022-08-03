import 'core/get_it.dart';

import 'presenter/ui/product_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  setupDependencies();
  runApp(
    const MaterialApp(
      home: ProductPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

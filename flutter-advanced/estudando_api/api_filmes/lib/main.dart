import 'package:flutter/material.dart';

import 'anime_facts/facts_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const FactsPage(),
    ),
  );
}

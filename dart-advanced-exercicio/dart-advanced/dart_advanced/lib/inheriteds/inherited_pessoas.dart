import 'package:dart_advanced/main.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    const IWPessoas(
      child: MaterialApp(
        home: Main(),
      ),
    ),
  );
}

class IWPessoas extends InheritedWidget {
  const IWPessoas({Key? key, required this.child})
      : super(key: key, child: child);

  @override
  final Widget child;

  static IWPessoas? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<IWPessoas>();
  }

  @override
  bool updateShouldNotify(IWPessoas oldWidget) {
    return true;
  }
}

import 'package:flutter/material.dart';

Color getColorProgress(double value) {
  if (value > 0.7) {
    return const Color.fromRGBO(0, 255, 0, 0.6);
  } else {
    if (value < 0.5) {
      return const Color.fromRGBO(255, 0, 0, 0.6);
    } else {
      return const Color.fromRGBO(255, 235, 59, 0.6);
    }
  }
}

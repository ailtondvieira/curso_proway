import 'package:flutter/material.dart';

const double kMinRadius = 56.0;
const double kMaxRadius = 256.0;
const Interval opacityCurve = Interval(0.0, 0.75, curve: Curves.fastOutSlowIn);

RectTween createRectTween(Rect? begin, Rect? end) {
  return MaterialRectCenterArcTween(begin: begin, end: end);
}

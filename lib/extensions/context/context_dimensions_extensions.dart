import 'package:flutter/material.dart';

extension DimensionsExtension on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;

  double get widthPercent => width / 100;
  double get heightPercent => height / 100;

  double get diceEdgeLenght => widthPercent * 40;
  double get diceDotSize => diceEdgeLenght / 5;
}

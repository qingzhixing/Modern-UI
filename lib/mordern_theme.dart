import 'package:flutter/material.dart';

final class MordernTheme {
  late Color backgroundColor;
  late Color highlightColor;
  late Color shadowColor;
  late Color iconColor;
  late List<Color> gradientColors;

  MordernTheme({
    Color? backgroundColor,
    Color? highlightColor,
    Color? shadowColor,
    Color? iconColor,
    List<Color>? gradientColors,
  }) {
    this.backgroundColor = backgroundColor ?? Colors.red;
    this.highlightColor = highlightColor ?? Colors.red;
    this.shadowColor = shadowColor ?? Colors.red;
    this.iconColor = iconColor ?? Colors.red;
    this.gradientColors = gradientColors ?? [Colors.red, Colors.red];
  }
}

final lightTheme = MordernTheme(
  backgroundColor: Colors.grey[300],
  highlightColor: Colors.white,
  shadowColor: Colors.grey,
  iconColor: Colors.black,
  gradientColors: [
    Colors.grey[100]!,
    Colors.grey[300]!,
    Colors.grey[400]!,
    Colors.grey,
  ],
);
final darkTheme = MordernTheme(
  backgroundColor: Colors.grey[850],
  highlightColor: Colors.grey[800],
  shadowColor: Colors.grey[900],
  iconColor: Colors.white,
  gradientColors: [
    Colors.grey[700]!,
    Colors.grey[800]!,
    Colors.grey[850]!,
    Colors.grey[900]!,
  ],
);

import 'package:flutter/material.dart';

final class MordernTheme {
  Color backgroundColor = Colors.red;
  Color highlightColor = Colors.red;
  Color shadowColor = Colors.red;
  Color iconColor = Colors.red;

  MordernTheme({
    Color? backgroundColor,
    Color? highlightColor,
    Color? shadowColor,
    Color? iconColor,
  }) {
    this.backgroundColor = backgroundColor ?? Colors.red;
    this.highlightColor = highlightColor ?? Colors.red;
    this.shadowColor = shadowColor ?? Colors.red;
    this.iconColor = iconColor ?? Colors.red;
  }
}

final lightTheme = MordernTheme(
  backgroundColor: Colors.grey[300],
  highlightColor: Colors.white,
  shadowColor: Colors.grey[500],
  iconColor: Colors.black,
);
final darkTheme = MordernTheme(
  backgroundColor: Colors.grey[850],
  highlightColor: Colors.grey[800],
  shadowColor: Colors.grey[900],
  iconColor: Colors.white,
);

import 'package:flutter/material.dart';

class CstmTile {
  String title;
  String imgUrl;
  Color color;

  CstmTile({
    required this.title,
    required this.imgUrl,
    required this.color,
  });

  // Color getColor() => color;

  String getTItle() {
    if (title == "Dog 2") return "Dog 2 TT";
    return title;
  }

  Color getColor() {
    if (color == Colors.pink) return Colors.red;

    return color;
  }
}

/*
Replace it

{return}
=>

*/
import 'package:flutter/material.dart';
import 'package:listdemo/Services/CstmTheme.dart';

class CstmListTile {
  int index;
  String img;
  String title;
  Color color;

  CstmListTile({
    required this.index,
    required this.img,
    required this.title,
    required this.color,
  });

  Color getColor() {
    return color;
  }
}

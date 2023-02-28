// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:listdemo/Models/ListTileModel.dart';
import 'package:listdemo/Services/CstmTheme.dart';

class ListCntr extends StatelessWidget {
  final CstmListTile cstmListTileObj;
  final Function onDelPressed;
  const ListCntr({
    super.key,
    required this.cstmListTileObj,
    required this.onDelPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF9008FB)),
          borderRadius: BorderRadius.circular(7.0),
          color: cstmListTileObj.getColor(),
          boxShadow: const [
            BoxShadow(
              color: Color(0x40000000),
              blurRadius: 4.0,
              offset: Offset(0, 4),
            )
          ]),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          CircleAvatar(
            radius: 25,
            foregroundImage: NetworkImage(cstmListTileObj.img),
          ),
          SizedBox(width: 8.0),
          Text(cstmListTileObj.title),
          Spacer(),
          GestureDetector(
            onTap: () => onDelPressed(),
            child: Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}

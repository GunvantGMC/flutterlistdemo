// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:listdemo/Models/CstmTile.dart';
import 'package:listdemo/Services/CstmTheme.dart';

class CstmListTile extends StatelessWidget {
  final CstmTile cstmTile;
  final Function onDelTap;
  const CstmListTile({
    super.key,
    required this.cstmTile,
    required this.onDelTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: cstmTile.getColor(),
        border: Border.all(color: CstmTheme.borderColor),
        borderRadius: BorderRadius.circular(7),
        boxShadow: const [
          BoxShadow(
            color: Color(0x40000000),
            blurRadius: 4.0,
            spreadRadius: 0.0,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(cstmTile.imgUrl),
          ),
          SizedBox(width: 10.0),
          Text(cstmTile.getTItle()),
          Spacer(),
          InkWell(
            onTap: () => onDelTap(),
            child: Icon(Icons.delete, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

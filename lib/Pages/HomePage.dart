// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:listdemo/Models/ListTileModel.dart';
import 'package:listdemo/Services/CstmTheme.dart';
import 'package:listdemo/Widgets/ListCntr.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CstmListTile> tileList = [
    CstmListTile(
      index: 0,
      img:
          "https://img.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_181624-22807.jpg",
      title: "SMK",
      color: Colors.cyan,
    ),
    CstmListTile(
      index: 1,
      img:
          "https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg",
      title: "PPY",
      color: Colors.red,
    ),
    CstmListTile(
      index: 2,
      img:
          "https://img.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_181624-22807.jpg",
      title: "CKP",
      color: Colors.blue,
    ),
    CstmListTile(
      index: 3,
      img:
          "https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg",
      title: "TVP",
      color: Colors.yellow,
    ),
    CstmListTile(
      index: 4,
      img:
          "https://img.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_181624-22807.jpg",
      title: "GMC",
      color: Colors.green,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CstmTheme.primaryColor,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListCntr(
          cstmListTileObj: tileList[index],
          onDelPressed: () => removeListTile(index: index),
        ),
        itemCount: tileList.length,
      ),
    );
  }

  removeListTile({required index}) {
    tileList.removeAt(index);
    setState(() {});
  }
}

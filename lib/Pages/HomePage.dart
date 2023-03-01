// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:listdemo/Models/CstmTile.dart';
import 'package:listdemo/Services/CstmTheme.dart';
import 'package:listdemo/Widgets/CstmListTIle.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CstmTile> cstmTileList = [
    CstmTile(
      title: "Dog 1",
      imgUrl:
          "https://webneel.com/daily/sites/default/files/images/daily/08-2018/1-nature-photography-spring-season-mumtazshamsee.jpg",
      color: Colors.yellow,
    ),
    CstmTile(
      title: "Dog 2",
      imgUrl:
          "https://static.wixstatic.com/media/bb1bd6_bff16ec17b254ea9a802558f14af75e0~mv2.png/v1/fit/w_1000%2Ch_608%2Cal_c/file.png",
      color: Colors.green,
    ),
    CstmTile(
      title: "Dog 3",
      imgUrl:
          "https://webneel.com/daily/sites/default/files/images/daily/08-2018/1-nature-photography-spring-season-mumtazshamsee.jpg",
      color: Colors.pink,
    ),
    CstmTile(
      title: "Dog 4",
      imgUrl:
          "https://static.wixstatic.com/media/bb1bd6_bff16ec17b254ea9a802558f14af75e0~mv2.png/v1/fit/w_1000%2Ch_608%2Cal_c/file.png",
      color: Colors.cyan,
    ),
    CstmTile(
      title: "Dog 5",
      imgUrl:
          "https://webneel.com/daily/sites/default/files/images/daily/08-2018/1-nature-photography-spring-season-mumtazshamsee.jpg",
      color: Colors.blue,
    ),
    CstmTile(
      title: "Dog 6",
      imgUrl:
          "https://static.wixstatic.com/media/bb1bd6_bff16ec17b254ea9a802558f14af75e0~mv2.png/v1/fit/w_1000%2Ch_608%2Cal_c/file.png",
      color: Colors.purple,
    ),
    CstmTile(
      title: "Dog 7",
      imgUrl:
          "https://webneel.com/daily/sites/default/files/images/daily/08-2018/1-nature-photography-spring-season-mumtazshamsee.jpg",
      color: Colors.pinkAccent,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CstmTheme.primaryColor,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => CstmListTile(
          cstmTile: cstmTileList[index],
          onDelTap: () {
            cstmTileList.removeAt(index);
            setState(() {});
          },
        ),
        itemCount: cstmTileList.length,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:listdemo/Pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

/*

Pages :
Model : 
Widgets : 
Services :
    CstmTheme :
    CstmFont :
  
*/
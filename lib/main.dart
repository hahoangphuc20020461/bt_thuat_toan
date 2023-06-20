import 'package:fffff/UI/Level1.1.dart';
import 'package:fffff/UI/ListLevel1.dart';
import 'package:flutter/material.dart';

import 'UI/ListLevel.dart';

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
      home: ListLevel(),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


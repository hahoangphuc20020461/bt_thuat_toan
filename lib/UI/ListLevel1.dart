import 'dart:ffi';

import 'package:fffff/UI/Level1.10.dart';
import 'package:fffff/UI/Level1.2.dart';
import 'package:fffff/UI/Level1.3.dart';
import 'package:fffff/UI/Level1.5.dart';
import 'package:fffff/UI/Level1.6.dart';
import 'package:fffff/UI/Level1.7.dart';
import 'package:fffff/UI/Level1.8.dart';
import 'package:fffff/UI/Level1.9.dart';
import 'package:fffff/UI/Level2.1.dart';
import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

import 'Level1.1.dart';
import 'Level1.4.dart';

class ListLevel1 extends StatelessWidget {

 ListLevel1({super.key});

  List<Widget>ListallLevel1 = [
    Level1dot1(),
    Level1dot2(),
    Level1dot3(),
    Level1dot4(),
    Level1dot5(),
    Level1dot6(),
    Level1dot7(),
    Level1dot8(),
    Level1dot9(),
    Level1dot10()
  ];

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list level 1"),
      ),
      body: ListView.builder(
        itemCount: ListallLevel1.length,
        itemBuilder: (context, index) {
        return ListTile(
          title: Text("level1.${index + 1}"),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ListallLevel1[index]));
          },
        );
      }
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}


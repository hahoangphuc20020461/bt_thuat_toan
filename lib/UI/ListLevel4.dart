import 'package:fffff/UI/Level2.1.dart';
import 'package:fffff/UI/Level2.2.dart';
import 'package:fffff/UI/Level2.4.dart';
import 'package:fffff/UI/Level2.5.dart';
import 'package:fffff/UI/Level3.10.dart';
import 'package:fffff/UI/Level3.2.dart';
import 'package:fffff/UI/Level3.3.dart';
import 'package:flutter/material.dart';

import 'Level2.3.dart';
import 'Level3.1.dart';
import 'Level3.4.dart';
import 'Level3.5.dart';
import 'Level3.6.dart';
import 'Level3.7.dart';
import 'Level4.1.dart';
import 'Level4.2.dart';
import 'Level4.3.dart';
import 'Level4.6.dart';
import 'Level4.7.dart';

class ListLevel4 extends StatelessWidget {

 ListLevel4({super.key});

  List<Widget>ListallLevel4 = [
    Level4dot1(),
    Level4dot2(),
    Level4dot3(),
    Level4dot6(),
    Level4dot7()
  ];

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list level 4"),
      ),
      body: ListView.builder(
        itemCount: ListallLevel4.length,
        itemBuilder: (context, index) {
        return ListTile(
          title: Text("level4.${index + 1}"),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ListallLevel4[index]));
          },
        );
      }
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}

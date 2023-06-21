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

class ListLevel3 extends StatelessWidget {

 ListLevel3({super.key});

  List<Widget>ListallLevel3 = [
    Level3dot1(),
    Level3dot2(),
    Level3dot3(),
    Level3dot4(),
    Level3dot5(),
    Level3dot6(),
    Level3dot7(),
    Level3dot10()
  ];

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list level"),
      ),
      body: ListView.builder(
        itemCount: ListallLevel3.length,
        itemBuilder: (context, index) {
        return ListTile(
          title: Text("level3.${index + 1}"),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ListallLevel3[index]));
          },
        );
      }
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}

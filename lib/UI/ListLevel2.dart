import 'package:fffff/UI/Level2.1.dart';
import 'package:fffff/UI/Level2.2.dart';
import 'package:fffff/UI/Level2.4.dart';
import 'package:fffff/UI/Level2.5.dart';
import 'package:flutter/material.dart';

import 'Level2.3.dart';

class ListLevel2 extends StatelessWidget {

 ListLevel2({super.key});

  List<Widget>ListallLevel2 = [
    Level2dot1(),
    Level2dot2(),
    Level2dot3(),
    Level2dot4(),
    Level2dot5()
  ];

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list level"),
      ),
      body: ListView.builder(
        itemCount: ListallLevel2.length,
        itemBuilder: (context, index) {
        return ListTile(
          title: Text("level2.${index + 1}"),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ListallLevel2[index]));
          },
        );
      }
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}

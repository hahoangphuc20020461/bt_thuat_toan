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
import 'Level4.10.dart';
import 'Level4.2.dart';
import 'Level4.3.dart';
import 'Level4.6.dart';
import 'Level4.7.dart';
import 'Level4.9.dart';
import 'Level5.1.dart';

class ListLevel5 extends StatelessWidget {

 ListLevel5({super.key});

  List<Widget>ListallLevel5 = [
    Level5dot1()
  ];

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list level 5"),
      ),
      body: ListView.builder(
        itemCount: ListallLevel5.length,
        itemBuilder: (context, index) {
        return ListTile(
          title: Text("level5.${index + 1}"),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ListallLevel5[index]));
          },
        );
      }
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}

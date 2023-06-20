import 'package:fffff/UI/ListLevel1.dart';
import 'package:fffff/UI/ListLevel2.dart';
import 'package:fffff/UI/ListLevel3.dart';
import 'package:flutter/material.dart';

class ListLevel extends StatefulWidget {
  const ListLevel({super.key});
  

  @override
  State<ListLevel> createState() => _ListLevelState();
}

class _ListLevelState extends State<ListLevel> {
  List<Widget>ListallLevel = [
    ListLevel1(),
    ListLevel2(),
    ListLevel3()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list level"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ListallLevel[0]));
            }, child: Text("Level 1"),
            style: ButtonStyle(
              padding: MaterialStatePropertyAll(
                EdgeInsets.all(20)
              )
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ListallLevel[1]));
              }, child: Text("Level 2"),
              style: ButtonStyle(
                padding: MaterialStatePropertyAll(
                  EdgeInsets.all(20)
                )
              ),
              ),
            ),
            ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ListallLevel[2]));
            }, child: Text("Level 3"),
            style: ButtonStyle(
              padding: MaterialStatePropertyAll(
                EdgeInsets.all(20)
              )
            ),
            ),
          ]
            ),
      )
      );
    // TODO: implement build
    throw UnimplementedError();
  }
}


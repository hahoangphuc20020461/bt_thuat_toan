import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level1dot6 extends StatefulWidget {
 Level1dot6({super.key});

  @override
  State<Level1dot6> createState() => _Level1dot6State();
}

class _Level1dot6State extends State<Level1dot6> {
  List<int> num = [];
  TextEditingController numberOfLength = TextEditingController();

  String output = "";

  void _incrementSum() {
    setState(() {
      num = List<int>.from(
        numberOfLength.text.split(",").map((e) => int.parse(e))
      ).toList();
      output = Inra(num);
    });
  }

  String Inra(List<int> a) {
    a.sort();
    String s = a.toString();
    return s;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 1.6"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Text("Enter your length number",
          //     style: TextStyle(fontSize: 20),
          //     textAlign: TextAlign.center,
          //     ),
          //     TextFormField(
          //       controller: numberOfLength,
          //       textAlign: TextAlign.center,
          //     decoration: InputDecoration(
          //         border: OutlineInputBorder(),
          //         hintText: 'Your length number',
          //       ),
          //     ),

          Text("Enter your list number",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
              ),
              TextFormField(
                controller: numberOfLength,
                textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Your list number',
                ),
              ), 
              ElevatedButton(onPressed:(){
                _incrementSum();
              } 
              , child: Text("Submit")),
              Text("ascending order: $output")
        ],
      ),
    );
  }
}

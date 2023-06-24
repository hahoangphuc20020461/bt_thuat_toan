import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level4dot7 extends StatefulWidget {
 Level4dot7({super.key});
 

  @override
  State<Level4dot7> createState() => _Level4dot7State();
}

class _Level4dot7State extends State<Level4dot7> {
  //List<int> num = [];
  TextEditingController lengthOfString = TextEditingController();

  //int maxNum = 0;
  String l = '';

  void _incrementSum() {
      List<String> str = List<String>.from(lengthOfString.text.split(","));
      str.sort((a, b) => b.length.compareTo(a.length));
      //print(subStr(str));
      setState(() {
      l = str.toString();
      });
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 4.7"),
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

          Text("Enter your list String",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
              ),
              TextFormField(
                controller: lengthOfString,
                textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Your list string',
                ),
              ), 
              ElevatedButton(onPressed:(){
                _incrementSum();
              } 
              , child: Text("Submit")),
              Text("MaxSubtract: $l")
        ],
      ),
    );
  }
}

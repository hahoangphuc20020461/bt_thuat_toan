import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level2dot2 extends StatefulWidget {
 Level2dot2({super.key});

  @override
  State<Level2dot2> createState() => _Level2dot2State();
}

class _Level2dot2State extends State<Level2dot2> {
  // List<String> str = [];
  TextEditingController lengthOfString = TextEditingController();

  //String Stri="";
  String l = "";

  void _incrementSum() {
    List<String> str = List<String>.from(lengthOfString.text.split(" "));
    str.sort((a, b) => a.length.compareTo(b.length));
    setState(() {
      //Stri = str.toString();
      l = str.last;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 2.2"),
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
              Text("Longest: $l")
        ],
      ),
    );
  }
}

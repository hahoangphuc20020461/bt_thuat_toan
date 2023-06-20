import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level1dot5 extends StatefulWidget {
 Level1dot5({super.key});

  @override
  State<Level1dot5> createState() => _Level1dot5State();
}

class _Level1dot5State extends State<Level1dot5> {
  // List<String> str = [];
  TextEditingController lengthOfString = TextEditingController();

  String minStr="";

  void _incrementSum() {
    List<String> str = List<String>.from(lengthOfString.text.split(" "));
    str.sort((a, b) => a.length.compareTo(b.length));
    setState(() {
      minStr = str.first;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 1.5"),
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
              Text("Min: $minStr")
        ],
      ),
    );
  }
}

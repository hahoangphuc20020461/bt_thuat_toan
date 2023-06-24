import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level5dot1 extends StatefulWidget {
 Level5dot1({super.key});
 

  @override
  State<Level5dot1> createState() => _Level5dot1State();
}

class _Level5dot1State extends State<Level5dot1> {
  //List<int> num = [];
  TextEditingController lengthOfString = TextEditingController();

  //int maxNum = 0;
  String l = '';

  void _incrementSum() {
      List<dynamic> str = List<String>.from(lengthOfString.text.split(","));
      //str.sort((a, b) => b.length.compareTo(a.length));
      //print(subStr(str));
      setState(() {
      l = reverse(str).toString();
      });
  }
  
  List<dynamic> reverse(List<dynamic> s) {
    List<dynamic> list = [];
    for(int i = s.length - 1; i >= 0 && i <= s.length; i--) {
      list.add(s[i]);
    }
    return list;
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
              Text("rev: $l")
        ],
      ),
    );
  }
}

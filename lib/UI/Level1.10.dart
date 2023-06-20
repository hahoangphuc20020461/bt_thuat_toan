import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level1dot10 extends StatefulWidget {
 Level1dot10({super.key});

  @override
  State<Level1dot10> createState() => _Level1dot10State();
}

class _Level1dot10State extends State<Level1dot10> {
  // List<String> str = [];
  TextEditingController lengthOfString = TextEditingController();

  //String Stri="";
  int num = 0;

  void _incrementSum() {
    List<String> str = List<String>.from(lengthOfString.text.split(" "));
    str.sort((a, b) => a.compareTo(b));
    setState(() {
      //Stri = str.toString();
      num = countWord(str);
    });
  }
  
  int countWord(List<String> s) {
    int count = 0;
    for (int i = 0; i < s.length; i++) {
      if(s[i].contains("a")){
        count++;
      }
      
    }
    return count;
  } 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 1.10"),
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
              Text("Min: $num")
        ],
      ),
    );
  }
}

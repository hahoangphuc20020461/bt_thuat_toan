import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level3dot4 extends StatefulWidget {
 Level3dot4({super.key});
 

  @override
  State<Level3dot4> createState() => _Level3dot4State();
}

class _Level3dot4State extends State<Level3dot4> {
  //List<int> num = [];
  //TextEditingController numberOfLength = TextEditingController();
  TextEditingController lengthOfString = TextEditingController();

  //int maxNum = 0;
  String Str = '';

  void _incrementSum() {
      List<String> str = List<String>.from(lengthOfString.text.split(" "));
      // print(num);
      setState(() {
        Str = Sub(str);
      });
  }

  String Sub (List<String> s) {
    List<String> l = [];
    int maxCount = 0;
    for (int i = 0; i < s.length; i++) {
      for (int j = i + 1; j < s.length; j++) {
        int countfor = counter(s[i], s[j]);
        if (countfor > maxCount) {
          maxCount = countfor;
          l.clear();
          l.add(s[i]);
          l.add(s[j]);
        }
      }
    }
    return l.toString();
  }

  int counter(String s1, String s2) {
    int count = 0;
    for (int i = 0; i < s1.length; i++) {
      for (int j = 0; j < s2.length; j++) {
        if (s1.characters.elementAt(i) == s2.characters.elementAt(j)) {
          count++;
        }
      }
    }
    return count;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 3.4"),
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

          Text("Enter your list string",
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
              Text("Subtract: $Str")
        ],
      ),
    );
  }
}

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level4dot3 extends StatefulWidget {
 Level4dot3({super.key});
 

  @override
  State<Level4dot3> createState() => _Level4dot3State();
}

class _Level4dot3State extends State<Level4dot3> {
  //List<int> num = [];
  TextEditingController lengthOfString = TextEditingController();

  int maxNum = 0;
  //String str = '';

  void _incrementSum() {
      List<String> str = List<String>.from(lengthOfString.text.split(" "));
      print(subStr(str));
      setState(() {
      maxNum = subStr(str).length;
      });
  }

  String cl(String a, String b) {
    String l = "";
    for (int i = 0; i < a.length; i++) {
      for (int j = i + 1; j < a.length; j++) {
        if (b.contains(a.substring(i,j))) {
          if (j - i > l.length){
            l = a.substring(i,j);
          }
        }
      }
    }
    return l;
  }

  String subStr(List<String> s) {
    // List<String> c = [];
    String longestSubstring = '';
    longestSubstring = cl(s[0], s[1]);
    for (int i = 2; i < s.length; i++) {
      String sub = cl(longestSubstring, s[i]); 
      if (sub.length < longestSubstring.length) {
        longestSubstring = sub;
      }
    }
    return longestSubstring;
  } 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 4.3"),
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
                controller: lengthOfString,
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
              Text("MaxSubtract: $maxNum")
        ],
      ),
    );
  }
}

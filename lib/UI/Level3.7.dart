import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level3dot7 extends StatefulWidget {
 Level3dot7({super.key});
 

  @override
  State<Level3dot7> createState() => _Level3dot7State();
}

class _Level3dot7State extends State<Level3dot7> {
  //List<int> num = [];
  TextEditingController lengthOfString = TextEditingController();

  int maxNum = 0;
  //String str = '';

  void _incrementSum() {
      List<String> str = List<String>.from(lengthOfString.text.split(" "));
      // print(num);
       maxNum = palindrome(str).length;
       print(maxNum);
      // setState(() {
      //   maxNum = palindrome(str).length;
      // });
  }

  String palindrome (List<String> l) {
    List<String> s = [];
    for (int i = 0; i < l.length; i++) {
      for (int j = i + 1; j < l.length; j++) {
        if (l[i].split('').reversed.contains(l[i])) {
        s.add(l[i]);
        }
      }
    }
    return s.toString();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 3.3"),
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

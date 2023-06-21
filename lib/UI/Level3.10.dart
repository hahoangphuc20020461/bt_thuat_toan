import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level3dot10 extends StatefulWidget {
 Level3dot10({super.key});
 

  @override
  State<Level3dot10> createState() => _Level3dot10State();
}

class _Level3dot10State extends State<Level3dot10> {
  //List<int> num = [];
  TextEditingController lengthOfString = TextEditingController();

  //int maxNum = 0;
  String s = '';

  void _incrementSum() {
      List<String> str = List<String>.from(lengthOfString.text.split(" "));
       
      setState(() {
        s = display(str);
      });
  }

  void swap (String a, String b) {
    String temp;
  temp = a;
  a = b;
  b = temp;
  }

  String display (List<String> l) {
    l.sort((a, b) => a.length.compareTo(b.length));
    List<String> h = [];
    h.addAll(l);
    return h.toString();
  }

  void palindrome (List<String> l) { // bubble sort
   // List<String> s = [];
    for (int i = 0; i < l.length - 1; i++) {
      for (int j = 0; j < l.length - i - 1; j++) {
          if (l[j].length > l[j + 1].length)
                swap(l[j], l[j + 1]);
         }      
      } 
    
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 3.10"),
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
                  hintText: 'Your list String',
                ),
              ), 
              ElevatedButton(onPressed:(){
                _incrementSum();
              } 
              , child: Text("Submit")),
              Text("MaxSubtract: $s")
        ],
      ),
    );
  }
}

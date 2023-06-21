import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level4dot1 extends StatefulWidget {
 Level4dot1({super.key});
 

  @override
  State<Level4dot1> createState() => _Level4dot1State();
}

class _Level4dot1State extends State<Level4dot1> {
  List<int> num = [];
  TextEditingController numberOfLength = TextEditingController();

  int maxNum = 0;
  //String s = '';

  void _incrementSum() {
      num = List<int>.from(
        numberOfLength.text.split(",").map((e) => int.parse(e))
      ).toList();
      setState(() {
        maxNum = palindrome(num);
      });
  }

  
  int palindrome (List<int> l) { // bubble sort
   // List<String> s = [];
    int count = 0;
    for (int i = 0; i < l.length - 1; i++) {
      for (int j = 0; j < l.length - i - 1; j++) {
          if (l[j] > l[j + 1]) {
              int temp = l[j];
              l[j] = l[j+1];
              l[j+1] = temp;
              count++;
          }       
         }      
      } 
    return count;
  }

  String display (List<String> l) {
    l.sort((a, b) => a.length.compareTo(b.length));
    List<String> h = [];
    h.addAll(l);
    return h.toString();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 4.1"),
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
                controller: numberOfLength,
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
              Text("MaxSubtract: $maxNum")
        ],
      ),
    );
  }
}

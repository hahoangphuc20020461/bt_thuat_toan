import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level4dot6 extends StatefulWidget {
 Level4dot6({super.key});
 

  @override
  State<Level4dot6> createState() => _Level4dot6State();
}

class _Level4dot6State extends State<Level4dot6> {
  //List<int> num = [];
  TextEditingController number2 = TextEditingController();
  List<int> number = [];

  int maxNum = 0;
  //String str = '';

  void _incrementSum() {
      number = List<int>.from(
        number2.text.split(",").map((e) => int.parse(e))
      ).toList();
      print(maxSubtr(number));
      setState(() {
      maxNum = maxSubtr(number);
      });
  }

  int maxSubtr(List<int> n) {
    int s = 1;
    for(int i = 0; i < n.length; i++) {
      for(int j = i + 1; j < n.length; j++) {
        for(int z = j + 1; z < n.length; z++) {
          int sub = (n[i] * n[j] *  n[z]).abs();
        if (sub > s) {
          s = sub;
          }
        }
      }
    }
    return s;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 4.6"),
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
                controller: number2,
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

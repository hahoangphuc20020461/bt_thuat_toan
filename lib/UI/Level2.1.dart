import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level2dot1 extends StatefulWidget {
 Level2dot1({super.key});

  @override
  State<Level2dot1> createState() => _Level2dot1State();
}

class _Level2dot1State extends State<Level2dot1> {
  List<int> num = [];
  TextEditingController numberOfLength = TextEditingController();

  int maxNum = 0;

  void _incrementSum() {
    setState(() {
      // maxNum = LargestNum(num);
      num = List<int>.from(
        numberOfLength.text.split(",").map((e) => int.parse(e))
      ).toList();
      // print(num);
      maxNum = LargestNum(num);
    });
  }

  int LargestNum(List<int> a) {
    a.sort(); 
    int max = a[0];
    for (int i = 0; i < a.length; i++) {
      if (max < a[i]) {
        max = a[i - 1];
      }
    }
    return max;
  }

  // input (int length) {
  //   for (int i = 0; i < length; i++) {
  //     num.add();
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 2.1"),
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
                controller: numberOfLength,
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
              Text("Max: $maxNum")
        ],
      ),
    );
  }
}

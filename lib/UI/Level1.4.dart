import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level1dot4 extends StatefulWidget {
 Level1dot4({super.key});

  @override
  State<Level1dot4> createState() => _Level1dot4State();
}

class _Level1dot4State extends State<Level1dot4> {
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
        max = a[i];
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
        title: Text("Level 1.4"),
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

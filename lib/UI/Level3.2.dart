import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level3dot2 extends StatefulWidget {
 Level3dot2({super.key});

  @override
  State<Level3dot2> createState() => _Level3dot2State();
}

class _Level3dot2State extends State<Level3dot2> {
  List<int> num = [];
  TextEditingController numberOfLength = TextEditingController();

  int maxNum = 0;

  void _incrementSum() {
      num = List<int>.from(
        numberOfLength.text.split(",").map((e) => int.parse(e))
      ).toList();
      // print(num);
      setState(() {
        maxNum = largestSubtract(num);
      });
  }

  int largestSubtract(List<int> a) { 
    int max = 0;
    a.sort();
    for (int i = 0; i < a.length; i++) {
      max = a[i] - a[0];
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
        title: Text("Level 3.2"),
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
              Text("MaxSubtract: $maxNum")
        ],
      ),
    );
  }
}

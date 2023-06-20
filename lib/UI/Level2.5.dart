import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level2dot5 extends StatefulWidget {
 Level2dot5({super.key});

  @override
  State<Level2dot5> createState() => _Level2dot5State();
}

class _Level2dot5State extends State<Level2dot5> {
  List<int> num = [];
  TextEditingController numberOfLength = TextEditingController();

  int maxNum = 0;

  void _incrementSum() {
      num = List<int>.from(
        numberOfLength.text.split(",").map((e) => int.parse(e))
      ).toList();
      // print(num);
      setState(() {
        maxNum = largestNum(num);
      });
  }

  int largestNum(List<int> a) { 
    int max = 0;
    
    for (int i = 0; i < a.length; i++) {
      int sum = 0;
                for (int j = i; j < a.length; j++) {
                  //tong chuoi con trong mang
                  sum += a[j];
                  if (sum > max) {
                    max = sum;
                  }
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

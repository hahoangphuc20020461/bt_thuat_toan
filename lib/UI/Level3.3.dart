import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level3dot3 extends StatefulWidget {
 Level3dot3({super.key});
 

  @override
  State<Level3dot3> createState() => _Level3dot3State();
}

class _Level3dot3State extends State<Level3dot3> {
  List<int> num = [];
  TextEditingController numberOfLength = TextEditingController();

  int maxNum = 0;
  //String str = '';

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
    List<int> arr = List.generate(a.length, (index) => 1);
    //List<String> l =[];
    for (int i = 1; i < a.length; i++) {
      for (int j = 0; j < i; j++) {
        if ( (a[j] < a[i]) && (arr[i] < arr[j] + 1)) {
          arr[i] = arr[j] + 1;
        }
      }
    }
    arr.sort();
    max = arr.last;
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

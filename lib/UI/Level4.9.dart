import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level4dot9 extends StatefulWidget {
 Level4dot9({super.key});
 

  @override
  State<Level4dot9> createState() => _Level4dot9State();
}

class _Level4dot9State extends State<Level4dot9> {
  //List<int> num = [];
  TextEditingController number2 = TextEditingController();
  List<int> number = [];

  int maxNum = 0;
  //String str = '';

  void _incrementSum() {
      number = List<int>.from(
        number2.text.split(",").map((e) => int.parse(e))
      ).toList();
      //maxSubtr(number).sort();
      print(maxSubtr(number));
      setState(() {
      maxNum = maxSubtr(number);
      });
  }

  int maxSubtr(List<int> n) {
    int s = 0;
    int cur = 1;
   // List<int> list = [];
      n.reduce((value, element) {
        
          if(value + 1 == element) {
          cur++;
          s = (max(cur, s)); 
        } 
        else {
      cur = 1;
    }
        
        
      return element;
      });
    //list.add(s);
    return s;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 4.9"),
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

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level4dot2 extends StatefulWidget {
 Level4dot2({super.key});

  @override
  State<Level4dot2> createState() => _Level4dot2State();
}

class _Level4dot2State extends State<Level4dot2> {
  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();
  List<int> number = [];
  int sum = 0;

  void _incrementSum() {
    number = List<int>.from(
        number2.text.split(",").map((e) => int.parse(e))
      ).toList();
    setState(() {
      sum = targetValue(number, int.parse(number1.text)) - 2;
    });
  }

  int targetValue(List<int>s, int n) {
    int num = 0;
    for(int i = 0; i < s.length; i++) {
      for(int j = 0; j < s.length; j++) {
        if (s[i] + s[j] == n) {
          num++;
        }
      }
    }
    return num;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 4.2"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
              Text("Enter your number",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
              ),
              TextFormField(
                controller: number1,
                textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Your number',
                ),
              ),
              Text("Enter your list number",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
              ),
              TextFormField(
                controller:number2,
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
              Text("Sum: $sum")
        ],
      ),
    );
  }
}

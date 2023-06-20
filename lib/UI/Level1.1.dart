import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level1dot1 extends StatefulWidget {
 static const String title = "Level 1";
 Level1dot1({super.key});

  @override
  State<Level1dot1> createState() => _Level1dot1State();
}

class _Level1dot1State extends State<Level1dot1> {
  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();
  int sum = 0;

  void _incrementSum() {
    setState(() {
      sum = (int.parse(number1.text) + int.parse(number2.text));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 1"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
              Text("Enter your first number",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
              ),
              TextFormField(
                controller: number1,
                textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Your first number',
                ),
              ),
              Text("Enter your second number",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
              ),
              TextFormField(
                controller:number2,
                textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Your second number',
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

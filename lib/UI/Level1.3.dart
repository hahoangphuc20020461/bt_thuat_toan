import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level1dot3 extends StatefulWidget {
 Level1dot3({super.key});

  @override
  State<Level1dot3> createState() => _Level1dot3State();
}

class _Level1dot3State extends State<Level1dot3> {
  TextEditingController num = TextEditingController();

  int sq = 0;

  void _incrementSum() {
    setState(() {
      sq = (int.parse(num.text) * int.parse(num.text));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 1.3"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
              Text("Enter your number here",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
              ),
              TextFormField(
                controller: num,
                textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Your number',
                ),
              ),
              
              ElevatedButton(onPressed:(){
                _incrementSum();
              } 
              , child: Text("Submit")),
              Text("Square: $sq")
        ],
      ),
    );
  }
}

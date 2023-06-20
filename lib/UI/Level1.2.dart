import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level1dot2 extends StatefulWidget {
 Level1dot2({super.key});

  @override
  State<Level1dot2> createState() => _Level1dot2State();
}

class _Level1dot2State extends State<Level1dot2> {
  TextEditingController str = TextEditingController();

  int count = 0;

  void _incrementSum() {
    setState(() {
      count = (str.text.toString().length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 1.2"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
              Text("Enter your String here",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
              ),
              TextFormField(
                controller: str,
                textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Your string',
                ),
              ),
              
              ElevatedButton(onPressed:(){
                _incrementSum();
              } 
              , child: Text("Submit")),
              Text("Length: $count")
        ],
      ),
    );
  }
}

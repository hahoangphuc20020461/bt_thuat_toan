import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level3dot6 extends StatefulWidget {
  Level3dot6({super.key});

  @override
  State<Level3dot6> createState() => _Level3dot6State();
}

class _Level3dot6State extends State<Level3dot6> {
  List<int> num1 = [];
  List<int> num2 = [];
  TextEditingController numberOfLength1 = TextEditingController();
  TextEditingController numberOfLength2 = TextEditingController();
  int num = 0;
  void _incrementSum() {
      num1 = List<int>.from(
        numberOfLength1.text.split(",").map((e) => int.parse(e))
      ).toList();
      num2 = List<int>.from(
        numberOfLength2.text.split(",").map((e) => int.parse(e))
      ).toList();
      medianNum(num1, num2);
      // print(num);
  }

  int maxNum = 0;

  void medianNum(List<int> l, List<int> a) {
    l.addAll(a);
    l.sort();
    for (int i = 0; i < l.length; i++) {
      if (l.length % 2 != 0) {
        setState(() {
          maxNum = l[(l.length / 2).round() - 1];
        });
      } else {
        int a = l[(l.length / 2 - 1).round() - 1];
        int b = l[(l.length / 2).round() - 1];
        setState(() {
          maxNum = ((a + b) / 2).round();
        });
      }
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 3.6"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Enter your first list number",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
              ),
              TextFormField(
                controller: numberOfLength1,
                textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Your first list number',
                ),
              ),

          Text(
            "Enter your second list number",
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          TextFormField(
            controller: numberOfLength2,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Your second list number',
            ),
          ),
          ElevatedButton(
              onPressed: () {
                _incrementSum();
              },
              child: Text("Submit")),
          Text("Max: $maxNum")
        ],
      ),
    );
  }
}

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level1dot8 extends StatefulWidget {
  Level1dot8({super.key});

  @override
  State<Level1dot8> createState() => _Level1dot8State();
}

class _Level1dot8State extends State<Level1dot8> {
  List<int> num = [];
  TextEditingController numberOfLength = TextEditingController();

  int maxNum = 0;

  void medianNum(List<int> l) {
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

  // input (int length) {
  //   for (int i = 0; i < length; i++) {
  //     num.add();
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 1.8"),
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

          Text(
            "Enter your list number",
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
          ElevatedButton(
              onPressed: () {
                List<int> l = List<int>.from(
                    numberOfLength.text.split(",").map((e) => int.parse(e))).toList();
                    print(l);
               medianNum(l);
              },
              child: Text("Submit")),
          Text("Max: $maxNum")
        ],
      ),
    );
  }
}

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level2dot4 extends StatefulWidget {
 Level2dot4({super.key});

  @override
  State<Level2dot4> createState() => _Level2dot4State();
}

class _Level2dot4State extends State<Level2dot4> {
  List<int> num = [];
  TextEditingController numberOfLength = TextEditingController();

  String divi = '';

  void _incrementSum() {
    setState(() {
      // maxNum = LargestNum(num);
      num = List<int>.from(
        numberOfLength.text.split(",").map((e) => int.parse(e))
      ).toList();
      // print(num);
      divi = divide3and5(num);
    });
  }

  String divide3and5(List<int> a) {
    
    String div = "";
    List<String> l =[];
    for (int i = 0; i < a.length; i++) {
      if (a[i] % 3 == 0 && a[i] % 5 == 0) {
        div = a[i].toString() + " ";
        l.add(div); 
      }
    }
    return l.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 2.4"),
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
              Text("Number: $divi")
        ],
      ),
    );
  }
}

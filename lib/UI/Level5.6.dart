import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level5dot6 extends StatefulWidget {
 Level5dot6({super.key});
 

  @override
  State<Level5dot6> createState() => _Level5dot6State();
}

class _Level5dot6State extends State<Level5dot6> {
  //List<int> num = [];
  TextEditingController lengthOfString = TextEditingController();

  //int maxNum = 0;
  String l = '';

  void _incrementSum() {
      List<dynamic> str = List<dynamic>.from(lengthOfString.text.split(","));
      //str.sort((a, b) => b.length.compareTo(a.length));
      //print(subStr(str));
      setState(() {
      l = del(str).toString();
      });
  }
  
  List<dynamic> del(List<dynamic> s) {
    List<dynamic> list = [];
    for(int i = 0; i < s.length; i++) {
     
        if(s[i] == ' ') {
          //s.removeWhere((element) => element == s[j]);
          s.removeAt(i);
          i--;
        
      } 
    }
    // s.reduce((value, element){
    //   if (value == element) {
    //     s.removeWhere((element) => element == element);
    //   }
    // });
    list.addAll(s);
    return list;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 5.3"),
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

          Text("Enter your list",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
              ),
              TextFormField(
                controller: lengthOfString,
                textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Your list',
                ),
              ), 
              ElevatedButton(onPressed:(){
                _incrementSum();
              } 
              , child: Text("Submit")),
              Text("rev: $l")
        ],
      ),
    );
  }
}

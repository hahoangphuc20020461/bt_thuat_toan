import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level4dot10 extends StatefulWidget {
 Level4dot10({super.key});

  @override
  State<Level4dot10> createState() => _Level4dot10State();
}

class _Level4dot10State extends State<Level4dot10> {
  // List<String> str = [];
  //TextEditingController lengthOfString = TextEditingController();
  TextEditingController Str1 = TextEditingController();
  TextEditingController Str2 = TextEditingController();
  String childLong = ""; 

  //String Stri="";
  String l = "";
  int k = 0;

  void _incrementSum() {
    //List<String> str = List<String>.from(lengthOfString.text.split(" "));
    //str.sort((a, b) => a.length.compareTo(b.length));
    setState(() {
      //Stri = str.toString();
      //l = str.last;
      l = cl(Str1.text, Str2.text);
      //print(l);
      k = cl(Str1.text, Str2.text).length;
    });
  }

  String cl(String a, String b) {
    String l = "";
    for (int i = 0; i < a.length; i++) {
      for (int j = i + 1; j <= a.length; j++) {
        if (b.contains(a.substring(i,j))) {
          if (j - i > l.length){
            l = a.substring(i,j);
          }
        }
      }
    }
    return l;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 4.10"),
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

          Text("Enter your list String 1",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
              ),
              TextFormField(
                controller: Str1,
                textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Your list string',
                ),
              ), 
              Text("Enter your list String 2",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
              ),
              TextFormField(
                controller: Str2,
                textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Your list string',
                ),
              ), 
              ElevatedButton(onPressed:(){
                _incrementSum();
              } 
              , child: Text("Submit")),
              Text("Longest: $l"),
              Text("K: $k")
        ],
      ),
    );
  }
}

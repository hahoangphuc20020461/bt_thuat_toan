import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fffff/Logic/ListLv.dart';

class Level5dot2 extends StatefulWidget {
 Level5dot2({super.key});

  @override
  State<Level5dot2> createState() => _Level5dot2State();
}

class _Level5dot2State extends State<Level5dot2> {
  TextEditingController number1 = TextEditingController();
  TextEditingController lengthOfString = TextEditingController();
  //List<dynamic> arr = [];
  String value1 = '';
  String value2 = '';

  void _incrementSum() {
    List<dynamic> str = List<dynamic>.from(lengthOfString.text.split(","));
    setState(() {
      value1 = div(str, int.parse(number1.text)).toString();
      value2 = last(str, int.parse(number1.text)).toString();
    });
  }

  List<dynamic> div (List<dynamic> s, int n) {
    List<dynamic> a = [];
    
      a.addAll( s.sublist(0, n));
    
    return a;
  }

  List<dynamic> last (List<dynamic> s, int n) {
    List<dynamic> a = [];
    
      a.addAll( s.sublist(n));
    
    return a;
  } 

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 5.2"),
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
                controller:lengthOfString,
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
              Text("first: $value1"),
               Text("last: $value2")
        ],
      ),
    );
  }
}

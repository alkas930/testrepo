import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class calculate extends StatefulWidget {
  const calculate({super.key});

  @override
  State<calculate> createState() => _calculateState();
}

class _calculateState extends State<calculate> {
  // Widget buttons(String buttonvalues) {
  //   return OutlinedButton(onPressed: () {}, child: Text(buttonvalues));
  // }
  Widget buttons(String buttonvalue) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: () {}, child: Text(buttonvalue)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "simple calculator",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text("ertyS"),
          Row(
            children: [
              buttons("AC"),
              buttons("X"),
              buttons("%"),
              buttons("/"),
            ],
          ),
          Row(
            children: [
              buttons("7"),
              buttons("8"),
              buttons("9"),
              buttons("*"),
            ],
          ),
          Row(
            children: [
              buttons("4"),
              buttons("5"),
              buttons("6"),
              buttons("-"),
            ],
          ),
          Row(
            children: [
              buttons("1"),
              buttons("2"),
              buttons("3"),
              buttons("+"),
            ],
          ),
          Row(
            children: [
              buttons("0"),
              buttons("00"),
              buttons("."),
              buttons("="),
            ],
          ),
        ],
      ),
    );
  }
}

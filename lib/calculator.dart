import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCalculator extends StatefulWidget {
  const MyCalculator({super.key});

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  late int firstNum;
  late int secondNum;

  String textDisplay = '';

  String res = '';
  late String operatorUse;

  void onBtnClicked(String btnValue) {
    if (btnValue == 'C') {
      textDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
    } else if (btnValue == '+' ||
        btnValue == '-' ||
        btnValue == '*' ||
        btnValue == '/') {
      firstNum = int.parse(textDisplay);
      res = '';
      operatorUse = btnValue;
    } else if (btnValue == '=') {
      secondNum = int.parse(textDisplay);
      if (operatorUse == '+') {
        res = (firstNum + secondNum).toString();
      }
      if (operatorUse == '-') {
        res = (firstNum - secondNum).toString();
      }
      if (operatorUse == '*') {
        res = (firstNum * secondNum).toString();
      }
      if (operatorUse == '/') {
        res = (firstNum / secondNum).toString();
      }
    } else {
      res = int.parse(textDisplay + btnValue).toString();
    }

    setState(() {
      textDisplay = res;
    });
  }

  Widget customeButton(String buttonValue) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: OutlinedButton(
            onPressed: () => onBtnClicked(buttonValue),
            child: Text(
              buttonValue,
              style: const TextStyle(fontSize: 20),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  textAlign: TextAlign.right,
                  textDisplay,
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              customeButton('9'),
              customeButton('8'),
              customeButton('7'),
              customeButton('+')
            ],
          ),
          Row(
            children: [
              customeButton('6'),
              customeButton('5'),
              customeButton('4'),
              customeButton('-')
            ],
          ),
          Row(
            children: [
              customeButton('3'),
              customeButton('2'),
              customeButton('1'),
              customeButton('*')
            ],
          ),
          Row(
            children: [
              customeButton('C'),
              customeButton('0'),
              customeButton('='),
              customeButton('/')
            ],
          )
        ],
      ),
    );
  }
}

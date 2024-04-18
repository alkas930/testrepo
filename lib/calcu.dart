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

  String textD = "";
  String result = "";
  late String oprtr;
  late int firstnum;
  late int secondnum;
  void onbuttonclicked(String buttonvalue) {
    if (buttonvalue == "C") {
      textD = "";
      result = "";
      firstnum = 0;
      secondnum = 0;
    } else if (buttonvalue == "+" ||
        buttonvalue == "-" ||
        buttonvalue == "*" ||
        buttonvalue == "/") {
      firstnum = int.parse(textD);
      oprtr = buttonvalue;
      result = "";
    } else if (buttonvalue == "=") {
      secondnum = int.parse(textD);

      if (oprtr == "+") {
        result = (firstnum + secondnum).toString();
      }
      if (oprtr == "-") {
        result = (firstnum - secondnum).toString();
      }
      if (oprtr == "*") {
        result = (firstnum * secondnum).toString();
      }
      if (oprtr == "/") {
        result = (firstnum / secondnum).toString();
      }
    } else {
      result = int.parse(textD + buttonvalue).toString();
    }

    setState(() {
      textD = result;
    });
  }

  Widget buttons(String buttonvalue) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: OutlinedButton(
            onPressed: () => onbuttonclicked(buttonvalue),
            child: Text(
              buttonvalue,
              style: const TextStyle(fontSize: 20),
            )),
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
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  textAlign: TextAlign.right,
                  textD,
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ],
            ),
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
              buttons("C"),
              buttons("/"),
              buttons("="),
            ],
          ),
        ],
      ),
    );
  }
}

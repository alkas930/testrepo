import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class popup extends StatefulWidget {
  const popup({super.key});

  @override
  State<popup> createState() => _popupState();
}

class _popupState extends State<popup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          AnimatedButton(
              text: "dissmis",
              pressEvent: () {
                AwesomeDialog(
                    context: context,
                    dialogType: DialogType.info,
                    borderSide: BorderSide(color: Colors.black, width: 3),
                    width: 280,
                    buttonsBorderRadius: const BorderRadius.all(
                      Radius.circular(2),
                    ));
              })
        ],
      ),
    );
  }
}

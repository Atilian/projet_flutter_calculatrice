import 'package:flutter/material.dart';

import 'windowDisplay.dart';
import 'numPad.dart';

import '../function/fun_operateur.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  List<String> listButtonInput = [];
  List<int> listCoteNumber = [];

  void addListButtonInput(String buttonInput) {
    setState(() {
      if (buttonInput == "E") {
        listButtonInput = displayToAnswer(listButtonInput);
      }
      else if (verification(listButtonInput, buttonInput)) {
        listButtonInput.add(buttonInput);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        WindowDisplay(listButtonInput.join()),
        NumPad(addListButtonInput),
      ],
    );
  }
}

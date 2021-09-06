import 'package:flutter/material.dart';

import 'windowDisplay.dart';
import 'numPad.dart';
import '../function/numButton.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  final List<int> listNumber = [];
  final List<int> listNumberAnswer = [];
  final List<String> listOperateur = [];
  List<String> listAnswer = [];

  int indexListNumber = 0;

  void addListNumber([String? operateur, int? number]) {
    setState(() {
      if (number != null) {
        listNumber.add(number);
        listAnswer.add(number.toString());
      } else if (operateur != null) {
        if (operateur == "E") {
          listAnswer = listToAnswer(listNumber, listOperateur);
          listOperateur.clear();
        } else if (operateur == "R") {
          listAnswer.clear();
          listNumber.clear();
          listOperateur.clear();
        } else {
          listNumber.add(listToInt(listNumber));
          indexListNumber++;
          listOperateur.add(operateur);
          listAnswer.add(operateur);
        }
      }
    });
  }

  int listToInt(List<int> listNumber) {
    int i;
    int number = 0;
    for (i in listNumber) {
      number = number * 10 + i;
    }
    listNumber.clear();
    return number;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        WindowDisplay(listAnswer),
        NumPad(addListNumber),
      ],
    );
  }
}

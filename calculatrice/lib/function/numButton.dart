import 'package:flutter/material.dart';

Widget numButton(Function addListNumber, String display,
    [String? operateur, int? number]) {
  return Container(
    margin: EdgeInsets.all(10),
    child: ElevatedButton(
      onPressed: () {
        addListNumber(operateur, number);
      },
      child: Text(display),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.pressed)) {
          return Colors.yellow;
        }
        return Colors.orange;
      }), textStyle: MaterialStateProperty.resolveWith((states) {
        return TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        );
      })),
    ),
  );
}

List<String> listToAnswer(List<int> listNumber, List<String> listOperateur) {
  List<String> answer;
  String operateur;

  if (listOperateur != null) {
    for (operateur in listOperateur) {
      if (operateur == "+") {
        listNumber[0] = addition(listNumber[0], listNumber[1]);
      } else if (operateur == "-") {
        listNumber[0] = soustraction(listNumber[0], listNumber[1]);
      } else if (operateur == "/") {
        listNumber[0] = division(listNumber[0], listNumber[1]);
      } else if (operateur == "*") {
        listNumber[0] = multiplication(listNumber[0], listNumber[1]);
      }
      listNumber.removeAt(1);
    }
  }
  return answer = listNumber.map((e) => e.toString()).toList();
}

int addition(int num1, int num2) {
  return num1 + num2;
}

int soustraction(int num1, int num2) {
  return num1 - num2;
}

int division(int num1, int num2) {
  return num1 ~/ num2;
}

int multiplication(int num1, int num2) {
  return num1 * num2;
}

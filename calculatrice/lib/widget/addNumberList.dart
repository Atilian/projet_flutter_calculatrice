import 'package:flutter/material.dart';

import 'displayWindow.dart';
import 'numPad.dart';
//import '../functions/operateur.dart';

class AddNumberDisplay extends StatefulWidget {
  @override
  _AddNumberDisplayState createState() => _AddNumberDisplayState();
}

class _AddNumberDisplayState extends State<AddNumberDisplay> {
  final List<double> listNumber = [];
  final List<String> listOpera = [];
  double answer = 0;
  int i = 0;

  void test(String value) {
    if (value == "/" ||
        value == "*" ||
        value == "+" ||
        value == "-" ||
        value == "E") {
      listNumber[i] = answer;
      if (value != "E") {
        listOpera.add(value);
        i++;
      }
    } else
      answer += double.parse(value);
  }

  Widget createButton(String display) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed))
                return Colors.greenAccent;
              return Colors.white; // Use the component's default.
            },
          ),
          shadowColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              return Colors.teal;
            },
          ),
          elevation: MaterialStateProperty.resolveWith<double>(
            (Set<MaterialState> states) {
              return 5;
            },
          ),
        ),
        onPressed: () {
          setState(() {
            listNumber.add(display);
          });
        },
        child: Text(
          display,
          style: TextStyle(
            fontSize: 35,
            color: Colors.teal,
          ),
        ),
      ),
    );
  }

  void resetList() {
    setState(() {
      listNumber.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        DisplayWindow(listNumber),
        NumPad(createButton, resetList, listNumber),
      ],
    );
  }
}

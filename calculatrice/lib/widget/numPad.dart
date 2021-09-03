import 'package:flutter/material.dart';

class NumPad extends StatelessWidget {
  final Function createButton;
  final Function resetList;
  final List<String> displayNumber;

  NumPad(this.createButton, this.resetList, this.displayNumber);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            createButton("/"),
            createButton("*"),
            createButton("-"),
            createButton("R"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            createButton("7"),
            createButton("8"),
            createButton("9"),
            createButton("+"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            createButton("4"),
            createButton("5"),
            createButton("6"),
            createButton("^"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            createButton("1"),
            createButton("2"),
            createButton("3"),
            createButton("E")
          ],
        ),
      ],
    );
  }
}

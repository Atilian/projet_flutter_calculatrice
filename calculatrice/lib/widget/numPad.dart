import 'package:flutter/material.dart';

import '../function/numButton.dart';

class NumPad extends StatelessWidget {
  final Function addListNumber;

  NumPad(this.addListNumber);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            numButton(addListNumber, "/", "/", null),
            numButton(addListNumber, "*", "*", null),
            numButton(addListNumber, "-", "-", null),
            numButton(addListNumber, "R", "R", null),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            numButton(addListNumber, "7", null, 7),
            numButton(addListNumber, "8", null, 8),
            numButton(addListNumber, "9", null, 9),
            numButton(addListNumber, "^", "^", null),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            numButton(addListNumber, "4", null, 4),
            numButton(addListNumber, "5", null, 5),
            numButton(addListNumber, "6", null, 6),
            numButton(addListNumber, "+", "+", null),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            numButton(addListNumber, "1", null, 1),
            numButton(addListNumber, "2", null, 2),
            numButton(addListNumber, "3", null, 3),
            numButton(addListNumber, "E", "E", null),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            numButton(addListNumber, "0", null, 0),
          ],
        )
      ],
    );
  }
}

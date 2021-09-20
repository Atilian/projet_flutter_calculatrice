import 'package:flutter/material.dart';

import 'buttonNumPad.dart';

class NumPad extends StatelessWidget {
  final Function addListButtonInput;

  NumPad(this.addListButtonInput);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonNumPad(addListButtonInput, "/"),
            ButtonNumPad(addListButtonInput, "*"),
            ButtonNumPad(addListButtonInput, "-"),
            ButtonNumPad(addListButtonInput, "R"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonNumPad(addListButtonInput, "7"),
            ButtonNumPad(addListButtonInput, "8"),
            ButtonNumPad(addListButtonInput, "9"),
            ButtonNumPad(addListButtonInput, "^"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonNumPad(addListButtonInput, "4"),
            ButtonNumPad(addListButtonInput, "5"),
            ButtonNumPad(addListButtonInput, "6"),
            ButtonNumPad(addListButtonInput, "+"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonNumPad(addListButtonInput, "1"),
            ButtonNumPad(addListButtonInput, "2"),
            ButtonNumPad(addListButtonInput, "3"),
            ButtonNumPad(addListButtonInput, "E"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonNumPad(addListButtonInput, "0"),
            ButtonNumPad(addListButtonInput, "("),
            ButtonNumPad(addListButtonInput, ")"),
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class ButtonNumPad extends StatelessWidget {
  final Function addListButtonInput;
  final String buttonInput;

  ButtonNumPad(this.addListButtonInput, this.buttonInput);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () {
          addListButtonInput(buttonInput);
        },
        child: Text(buttonInput),
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
}

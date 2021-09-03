import 'package:flutter/material.dart';

class DisplayWindow extends StatelessWidget {
  final List<String> displayNumber;

  DisplayWindow(this.displayNumber);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 1,
      alignment: Alignment.bottomRight,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.greenAccent,
          width: 2,
        ),
      ),
      child: Text(
        displayNumber.join(),
        style: TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }
}

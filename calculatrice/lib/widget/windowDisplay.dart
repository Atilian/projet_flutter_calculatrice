import 'package:flutter/material.dart';

class WindowDisplay extends StatelessWidget {
  final String display;

  WindowDisplay(this.display);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.15,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 3,
        ),
      ),
      child: Text(
        display,
        style: TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }
}

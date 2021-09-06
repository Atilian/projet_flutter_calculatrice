import 'package:flutter/material.dart';

import 'widget/test.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<double> listNumber = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text(
            "Calculatrice",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Test(),
        ),
      ),
    );
  }
}

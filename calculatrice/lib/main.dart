import 'package:flutter/material.dart';

import 'widget/addNumberList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final List<int> displayNumber = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.tealAccent,
          title: Text("Calculatrice"),
          actions: [
            Container(
              margin: EdgeInsets.all(10),
              child: Icon(
                Icons.calculate_outlined,
              ),
            )
          ],
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: AddNumberDisplay(),
        ));
  }
}

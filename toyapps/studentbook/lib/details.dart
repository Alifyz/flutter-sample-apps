import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Student Details Page"),
        ),
        body: Column(
          children: <Widget>[
            Text("Test")
          ],
        ),
      );
  }
}
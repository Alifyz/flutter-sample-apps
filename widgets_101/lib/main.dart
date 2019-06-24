import 'package:flutter/material.dart';

void main() => runApp(HomeWidget());

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.deepPurple),
      color: Colors.deepPurple,
      title: "Hello Widgets",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Widgets 101"),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[Text("Hello World")],
          )),
    );
  }
}

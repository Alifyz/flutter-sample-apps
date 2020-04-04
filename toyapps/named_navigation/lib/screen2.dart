import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Navigate Back"),
          onPressed: () {
            Navigator.of(context).pop("Sending Data back!");
          },
        ),
      ),
    );
  }
}

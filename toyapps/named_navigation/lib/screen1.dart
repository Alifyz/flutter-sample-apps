import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Navigate to Screen 2"),
          onPressed: () async {
            final message = await Navigator.of(context).pushNamed('/second');
            print(message);
          },
        ),
      ),
    );
  }
}

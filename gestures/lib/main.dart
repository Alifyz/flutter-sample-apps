import 'package:flutter/material.dart';
import 'dart:developer' as developer;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: GestureDetector(
          onTap: () {
            print("onTap Detected");
          },
          onLongPress: () {
            print("onLongPress Detected");
          },
          onDoubleTap: () {
            print("doubleTap Detected");
          },
          child: Container(
            color: Colors.red,
            child: Center(
              child: Text(
                "Gesture Detector: Tap, Drag, Long Press",
                style: Theme.of(context).textTheme.display1,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:named_navigation/screen1.dart';
import 'package:named_navigation/screen2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      title: 'Flutter Navigation Example',
      initialRoute: '/',
      routes: {
        '/' : (context) => Screen1(),
        '/second': (context) => Screen2()
      },
    );
  }
}

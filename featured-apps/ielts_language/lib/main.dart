import 'package:flutter/material.dart';
import 'package:ielts_language/styles/color_styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IELTS Language App',
      home: Scaffold(
        body: Container(
          height: 300,
          width: double.infinity,
          color: ColorStyles.primaryColor,
        ),
      ),
    );
  }
}

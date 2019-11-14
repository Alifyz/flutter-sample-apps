import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformStyles extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? MaterialApp(
            theme: ThemeData(
              primarySwatch: Colors.deepPurple,
              brightness: Brightness.light,
              fontFamily: 'Muli'
            ),
          )
        : CupertinoApp(
            theme: CupertinoThemeData(),
          );
  }
}

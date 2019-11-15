import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? MaterialApp(
            theme: ThemeData(
              primarySwatch: Colors.deepPurple,
              brightness: Brightness.light,
              fontFamily: 'Muli',
              textTheme: TextTheme(
                  title: TextStyle(
                      fontSize: 36.0,
                      fontFamily: 'Muli',
                      fontStyle: FontStyle.normal),
                  headline: TextStyle(
                      fontSize: 72.0,
                      fontFamily: 'Muli',
                      fontWeight: FontWeight.bold)),
            ),
            home: Scaffold(
              appBar: AppBar(
                title: Text("Theme Sample"),
              ),
              body: Column(
                children: <Widget>[
                  Text(
                    "This is a Header",
                    style: TextStyle(
                        fontSize: 36.0,
                        fontFamily: 'Muli',
                        fontStyle: FontStyle.italic),
                  ),
                  Text(
                    "This is simple text",
                    style: TextStyle(
                        fontSize: 24.0,
                        fontFamily: 'Muli',
                        fontStyle: FontStyle.normal),
                  ),
                ],
              ),
            ),
          )
        : CupertinoApp(
            theme: CupertinoThemeData(
                primaryColor: CupertinoColors.lightBackgroundGray,
                textTheme: CupertinoTextThemeData(
                    actionTextStyle: TextStyle(
                        fontSize: 36.0,
                        fontFamily: 'Muli',
                        fontStyle: FontStyle.italic))),
            home: Container(),
          );
  }
}

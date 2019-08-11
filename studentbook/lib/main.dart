import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter - Student App',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Student Book App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Card(
              child: Text("Student Note 1"), 
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}


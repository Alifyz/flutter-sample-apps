import 'package:flutter/material.dart';
import 'package:studentbook/details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter - Student App',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: HomeScreen()
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext mainContext) {
   return Scaffold(
        appBar: AppBar(
          title: Text("Student Book App"),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(8.0),
          itemCount: 5,
          itemBuilder: (context, int index) {
            return Card(
              child: Column(children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.star),
                  title: Text("Student Notes"),
                  subtitle: Text("Details Student Notes"),
                )
              ],),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add), 
          onPressed: () {
             Navigator.push(
              mainContext, 
              MaterialPageRoute(builder: (mainContext) => DetailsScreen()));
          },
        ),
   );
  }
}


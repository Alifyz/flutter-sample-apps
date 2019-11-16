import 'package:flutter/material.dart';

import 'details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: {"/details": (context) => DetailsScreen()},
      home: Scaffold(
          appBar: AppBar(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Hero Animations"),
                Text(
                  "Test Animations",
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.left,
                )
              ],
            ),
          ),
          body: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return simpleListItem(index, context);
            },
          )),
    );
  }

  Widget simpleListItem(index, context) {
    return ListTile(
      title: Text("Item #$index of the List"),
      subtitle: Text("Description number $index of the list"),
      leading: CircleAvatar(
        child: Hero(
            tag: "profile", child: Image.network("https://i.pravatar.cc/300")),
      ),
      onTap: () {
        Navigator.pushNamed(context, "/details");
      },
    );
  }
}

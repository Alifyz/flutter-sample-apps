import 'package:build_value_example/model/posts.dart';
import 'package:build_value_example/service/api.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          body: FutureBuilder<Posts>(
              future: getPosts(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data.posts.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(snapshot.data.posts[index].title),
                        );
                      });
                } else {
                  return Container();
                }
              }),
          appBar: AppBar(
            title: Text(
              'BuiltValue - Example',
            ),
          )),
    );
  }
}

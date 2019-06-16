import 'dart:io';

import 'package:flutter/material.dart';
import 'package:networking/Post.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Networking Example"),
        ),
        body: Center(
          child: FutureBuilder<Post>(
            future: fetchPosts(),
            builder: (context, snapshot) {
              if(snapshot.hasData) {
                return Text(snapshot.data.movieName);
              } else if(snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return CircularProgressIndicator();
            },
          )
        )
      )
    );
  }

  //Load the mock data from a Server
  static Future<Post> fetchPosts() async {
    final url = new Uri(
      scheme: "https",
      host: "jsonplaceholder.typicode.com",
      path: "/todos/1");
    final response = await http.get(url);
    print(response.body);
    if(response.statusCode == 200) {
      return Post.fromJson(json.decode(response.body));
    } else {
      throw Exception("Failed to load the Post!");
    }
  }
}


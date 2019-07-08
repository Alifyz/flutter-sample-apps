import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:retrofit_like/service/apiService.dart';

class SinglePostPage extends StatelessWidget {
  final int postId;
  const SinglePostPage({
    Key key, 
    this.postId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Details Page"),
      ),
      body: FutureBuilder<Response> (
        future: Provider.of<PostApiService>(context).getPost(postId),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.done) {
            final Map post = json.decode(snapshot.data.bodyString);
            return buildPosts(post);
          }else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

}

Widget buildPosts(Map posts) {
  return Padding(
    child: Column(
      children: <Widget>[
        Text(posts['title'])
      ],
    ), 
    padding: EdgeInsets.all(4)
  );
}
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:retrofit_like/service/apiService.dart';

import 'singlePostPage.dart';

class HomePage extends StatelessWidget {
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chopper Example"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          final response = await Provider.of<PostApiService>(context)
          .submitPost({'body': 'value'});
          print(response.body);
        },
      ),

      body: buildBody(context),
    );
  }
}


FutureBuilder<Response> buildBody(BuildContext context) {
  return FutureBuilder<Response>(
    future: Provider.of<PostApiService>(context).getPosts(),
    builder: (context, snapshot) {
      if(snapshot.connectionState == ConnectionState.done) {
        final List posts = json.decode(snapshot.data.bodyString);
        return buildPosts(context, posts);
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

Widget buildPosts(BuildContext context, List posts) {
  return ListView.builder(
    itemCount: posts.length,
    padding: EdgeInsets.all(8),
    itemBuilder: (context, index) {
      return Card(
        elevation: 4,
        child: ListTile(
          title: Text(posts[index]['title'],
          style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(posts[index]['body']),
          onTap: () => navigateToDetails(context, posts[index]['id']),
        ),
      );
    },
  );
}

void navigateToDetails(BuildContext context, id) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => SinglePostPage(postId: id))
  );
}
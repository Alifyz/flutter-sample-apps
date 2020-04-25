import 'package:build_value_example/model/posts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<Post>> getPosts() async {
  final request = await http.get('https://jsonplaceholder.typicode.com/posts');

  final rawPosts = jsonDecode(request.body);

  final List<Post> posts =
      List.generate(rawPosts.length, (index) => Post.fromJson(rawPosts[index]));

  return posts;
}

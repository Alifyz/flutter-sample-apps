

import 'package:build_value_example/model/posts.dart';
import 'package:build_value_example/model/serializers.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Posts> getPosts() async {
  final request = await http.get('https://jsonplaceholder.typicode.com/posts');

  final postsModel = serializers.deserializeWith(Posts.serializer, json.decode(request.body));

  return postsModel;
}
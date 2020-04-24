import 'package:build_value_example/model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'posts.g.dart';

abstract class Post implements Built<Post, PostBuilder> {

  int get id;
  int get userId;
  String get title;
  String get body;

  Post._();
  factory Post([void Function(PostBuilder) updates]) = _$Post;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Post.serializer, this);
  }

  static Post fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Post.serializer, json);
  }

  static Serializer<Post> get serializer => _$postSerializer;
}

abstract class Posts implements Built<Posts, PostsBuilder> {
  @nullable
  BuiltList<Post> get posts;

  Posts._();
  factory Posts([void Function(PostsBuilder) updates]) = _$Posts;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Posts.serializer, this);
  }

  static Posts fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Posts.serializer, json);
  }

  static Serializer<Posts> get serializer => _$postsSerializer;
}

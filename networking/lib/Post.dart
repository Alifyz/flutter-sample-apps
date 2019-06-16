class Post {
  final int userId;
  final String title;

  Post({this.userId, this.title});

  factory Post.fromJson(Map<String, dynamic> json) => Post (
      userId: json['userId'],   
      title: json['title'],
  );

}
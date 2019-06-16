class Post {
  final int id;
  final String movieName;
  final int year;
  final String category;

  Post({this.id, this.movieName, this.year, this.category});

  factory Post.fromJson(Map<String, dynamic> json) => Post (
      id: json['id'],   
      movieName: json['movieName'],
      year: json['year'],
      category: json['category'],
  );

}
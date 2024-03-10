class Post {
  final String cover;
  final int views;
  final String body;

  Post({
    required this.cover,
    required this.views,
    required this.body,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      cover: json['cover'],
      views: json['views'],
      body: json['body'],
    );
  }
}

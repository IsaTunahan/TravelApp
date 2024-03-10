import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:travel_home_page/models/api_post.dart';

class ApiService {
  Future<List<Post>> fetchPosts() async {
    final response =
        await http.get(Uri.parse('https://mockend.com/api/mockend/demo/posts'));
    if (response.statusCode == 200) {
      final List<dynamic> parsed = json.decode(response.body);
      return parsed.map((json) => Post.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_home_page/models/api_post.dart';
import 'package:travel_home_page/models/posts_models.dart';
import 'package:travel_home_page/models/user_models.dart';
import 'package:travel_home_page/services/api_service.dart';
import 'package:travel_home_page/widgets/posts_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Post>> futurePosts;
  final ApiService _apiService = ApiService();

  @override
  void initState() {
    super.initState();
    futurePosts = _apiService.fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    final storiesIndex = StoriesModel().stories;
    final postsIndex = PostsModel().posts;
    return Scaffold(
      backgroundColor: Colors.black,
      body: FutureBuilder<List<Post>>(
        future: futurePosts,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            return SafeArea(
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: ListView.builder(
                      itemCount: storiesIndex.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(8),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(
                                    'lib/images/profile_photos/${storiesIndex[index]['profile']}'),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                storiesIndex[index]['user'],
                                style: const TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Expanded(
                    flex: 6,
                    child: ListView.separated(
                      itemCount: snapshot.data!.length,
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      itemBuilder: (context, index) {
                        final post = snapshot.data![index];
                        return PostsWidget(
                          postsIndex: postsIndex,
                          post: post,
                          index: index,
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}

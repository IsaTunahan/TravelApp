import 'package:flutter/material.dart';
import 'package:travel_home_page/models/user_models.dart';

class StoryWidget extends StatelessWidget {
  final List<Map<String, dynamic>> storiesIndex;

  const StoryWidget({super.key, required this.storiesIndex});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: storiesIndex.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var stories = StoriesModel().stories;
          return Container(
            margin: const EdgeInsets.all(8),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                      'lib/images/profile_photos/${stories[index]['profile']}'),
                ),
                const SizedBox(height: 4),
                Text(
                  stories[index]['user'],
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

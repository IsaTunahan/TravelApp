import 'package:flutter/material.dart';
import 'package:travel_home_page/g_nav_bar.dart';
import 'package:travel_home_page/listview_content/circle.dart';
import 'package:travel_home_page/listview_content/square.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _stories = [
    {
      'user': 'Kadir',
      'profile': 'profile_photo_2.png',
    },
    {
      'user': 'Rüveyda',
      'profile': 'profile_photo_1.png',
    },
    {
      'user': 'M. Yasin',
      'profile': 'profile_photo_4.png',
    },
    {
      'user': 'Alperen',
      'profile': 'profile_photo_6.png',
    },
    {
      'user': 'Betül',
      'profile': 'profile_photo_9.png',
    },
    {
      'user': 'Derya',
      'profile': 'profile_photo_5.png',
    },
    {
      'user': 'İsa',
      'profile': 'profile_photo_10.png',
    },
    {
      'user': 'Elif',
      'profile': 'profile_photo_3.png',
    },
    {
      'user': 'Melih',
      'profile': 'profile_photo_12.png',
    },
    {
      'user': 'Sena',
      'profile': 'profile_photo_7.png',
    },
    {
      'user': 'Hava',
      'profile': 'profile_photo_11.png',
    },
    {
      'user': 'Eyüp',
      'profile': 'profile_photo_8.png',
    },
  ];

  final List _posts = [
    
    {
      'user': 'Esra',
      'profile': 'profile_photo_11.png',
      'image': 'museum_1.png',
      'caption': 'Dünya harikalarını keşfediyorum!',
    },
    {
      'user': 'İsa',
      'profile': 'profile_photo_10.png',
      'image': 'museum_2.png',
      'caption': 'Yolculuk, yeni hayat tecrübeleri demektir.',
    },
    {
      'user': 'Betül',
      'profile': 'profile_photo_9.png',
      'image': 'cafe_1.png',
      'caption': 'Dünya seni keşfetmek için bekliyor!',
    },
    {
      'user': 'Sena',
      'profile': 'profile_photo_7.png',
      'image': 'museum_3.png',
      'caption': 'Yeni yerler keşfediyorum!',
    },
    {
      'user': 'Kadir',
      'profile': 'profile_photo_2.png',
      'image': 'cafe_2.png',
      'caption': 'Hayatımın en güzel anları burada!',
    },
    {
      'user': 'Rüveyda',
      'profile': 'profile_photo_1.png',
      'image': 'cafe_3.png',
      'caption': 'Yolculuk bizi buraya getirdi!',
    },
    {
      'user': 'Alperen',
      'profile': 'profile_photo_6.png',
      'image': 'cafe_4.png',
      'caption': 'Rüyalarım gerçek oldu!',
    },
    {
      'user': 'Eyüp',
      'profile': 'profile_photo_8.png',
      'image': 'museum_4.png',
      'caption': 'İşte aradığım manzara!',
    },
    {
      'user': 'Melih',
      'profile': 'profile_photo_12.png',
      'image': 'cafe_5.png',
      'caption': 'Keşke hiç gitmesem!',
    },
    {
      'user': 'Derya',
      'profile': 'profile_photo_9.png',
      'image': 'museum_5.png',
      'caption': 'Bu anı ölümsüzleştirmeliyim!',
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Home Page"),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Column(
              children: [
                SizedBox(
                  height: 83,
                  child: ListView.builder(
                    itemCount: _stories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return MyCircle(
                        data: _stories[index],
                      );
                    },
                  ),
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: _posts.length,
                    itemBuilder: (context, index) {
                      return MySquare(
                        data: _posts[index],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const GNavBar(),
    );
  }
}

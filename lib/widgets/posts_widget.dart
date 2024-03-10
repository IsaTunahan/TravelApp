import 'package:flutter/material.dart';
import 'package:travel_home_page/models/api_post.dart';

class PostsWidget extends StatelessWidget {
  const PostsWidget({
    super.key,
    required this.postsIndex,
    required this.post,
    required this.index,
  });

  final List postsIndex;
  final Post post;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                "lib/images/profile_photos/${postsIndex[index]['profile']}"),
                            radius: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        postsIndex[index]['user'],
                        style: const TextStyle(color: Colors.white),
                      ),
                      Expanded(
                          child: Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            )),
                      ))
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        color: Colors.red,
                        child: Center(
                          child: Image.network(
                            post.cover,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.mode_comment_outlined,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.send,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.bookmark_border,
                                      color: Colors.white,
                                    ))))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "${post.views} likes",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                RichText(
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.visible,
                                  maxLines: 2,
                                  text: TextSpan(
                                    style: DefaultTextStyle.of(context).style,
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: postsIndex[index]
                                            ['user'], // Kullanıcı adı
                                        style: const TextStyle(
                                          fontWeight:
                                              FontWeight.bold, // Kalın stil
                                          color: Colors
                                              .white, // İsteğe bağlı, kullanıcı adının rengi
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            ' ${post.body}', // Geri kalan metin
                                        style: const TextStyle(
                                          color: Colors
                                              .white, // İsteğe bağlı, normal metnin rengi
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Row(
                            children: [
                              Text(
                                "View all 11 comments",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

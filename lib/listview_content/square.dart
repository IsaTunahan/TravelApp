import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  final Map<String, dynamic> data;

  const MySquare({Key? key, required this.data}) : super(key: key);

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
                                "lib/images/profile_photos/${data['profile']}"),
                            radius: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        data['user'],
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
                          child: Image.asset(
                            "lib/images/cafe/${data['image']}",
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
                            children: const [
                              Text(
                                "255 likes",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                data['user'],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                data['caption'],
                                style: const TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
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

import 'package:flutter/material.dart';

class MyCircle extends StatelessWidget {
  final Map<String, dynamic> data;

  const MyCircle({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage:
                AssetImage('lib/images/profile_photos/${data['profile']}'),
          ),
          const SizedBox(height: 4),
          Text(
            data['user'],
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

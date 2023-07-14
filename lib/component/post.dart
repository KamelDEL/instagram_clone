import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 50,
          child: Row(
            children: [
            Icon(Icons.person),
            Text("profileName")
            ],
          ),
        ),
        Image(image: NetworkImage(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(Icons.heart_broken),
              Icon(Icons.message),
              Icon(Icons.share),
            ],
          ),
        )
      ],
    );
  }
}
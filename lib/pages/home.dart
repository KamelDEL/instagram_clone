import 'package:flutter/material.dart';
import 'package:instagram_clone/component/post.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Row(children: [
          Text("Instametre"),
          Icon(Icons.heart_broken)
        ],)
      ),
      body: ListView(
        children: const [
        Post(),
        Post(),
        Post(),
        Post(),
        ]
      ),
    );
  }
}
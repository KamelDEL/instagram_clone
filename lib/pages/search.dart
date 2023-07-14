import 'package:flutter/material.dart';
import 'package:instagram_clone/component/recommended.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.search),
              TextField(),
            ],
          ),
        ),
      ),
      body: GridView.count(
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        crossAxisCount: 3,
        children: const <Widget> [
          Recommended(),
          Recommended(),
          Recommended(),
          Recommended(),
          Recommended(),
          Recommended(),
          Recommended(),
          Recommended(),
          Recommended(),
          Recommended(),
          Recommended(),
          Recommended(),
          Recommended(),
          Recommended(),
          Recommended(),
          Recommended(),
          Recommended(),
          Recommended(),
          Recommended(),
          Recommended(),
        ],
      ),
    );
  }
}
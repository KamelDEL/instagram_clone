import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'pages/search.dart';
import 'pages/reels.dart';
import 'pages/profile.dart';
import 'pages/shop.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;
  final List<Widget> _children =[ 
    const Home(),
    const Search(),
    const Reels(),
    const Shop(),
    const Profile(),
  ];
  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _children[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _navigateBottomBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.video_camera_back), label: "reels"),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: "shop"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        ],
      ),
    );
  }
}
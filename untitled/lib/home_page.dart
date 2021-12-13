import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/screens/discovery.dart';
import 'package:untitled/screens/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final screens = [
    const Center(child: DiscoveryPage()),
    const Center(child: Search()),
    const Center(
        child: Text(
      'Genres',
      style: TextStyle(fontSize: 50),
    )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Discovery"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.remove_red_eye), label: "Genres")
        ],
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:netflixclon/home.dart';
import 'package:netflixclon/news&hot.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> list = [
    HomeScreen(),
    NewandHot(),
    SizedBox(),
  ];

  @override
  void initState() {
    super.initState();
    currentScreen = 0;
  }

  late int currentScreen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xff564d4d).withOpacity(0.5),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
        // Set transparent background
        elevation: 0.0, // Set elevation to 0.0 to make it transparent
        title: Text(
          "My Home Screen",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: list[currentScreen],
      extendBody:
          true, // Allow the body to extend behind the BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent.withOpacity(0.6),
        // Set a transparent background color
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: "New & Hot",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "My Netflix",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: currentScreen,
        onTap: (index) {
          setState(() {
            currentScreen = index;
          });
        },
      ),
    );
  }
}

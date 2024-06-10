import 'package:flutter/material.dart';
import 'package:flutter_application_2/page/coursepage.dart';
import 'package:flutter_application_2/page/home.dart';
import 'package:flutter_application_2/page/profile.dart';
import 'package:flutter_application_2/page/wistlist.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int _selectIndex = 0;

class _HomePageState extends State<HomePage> {
//creating static data in lists
  final List Page = [
    Home_Page(),
    CoursePage(),
    WistListPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Page.elementAt(_selectIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _selectIndex = value;
          });
        },
        showUnselectedLabels: true,
        iconSize: 32,
        selectedFontSize: 18,
        selectedItemColor: Color(0xFF674AEF),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment), label: 'Course'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Wist List'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectIndex,
      ),
    );
  }
}

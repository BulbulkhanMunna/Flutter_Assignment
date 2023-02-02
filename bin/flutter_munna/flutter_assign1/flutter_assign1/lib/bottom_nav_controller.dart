import 'package:flutter/material.dart';

import 'package:flutter_assign1/pages/account.dart';
import 'package:flutter_assign1/pages/add.dart';
import 'package:flutter_assign1/pages/chat.dart';
import 'package:flutter_assign1/pages/home.dart';
import 'package:flutter_assign1/pages/my_ads.dart';

class BottomNavController extends StatefulWidget {
  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  int _currentIndex = 0;

  final _pages = [
    Home(),
    MyAds(),
    Add(),
    Chat(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        elevation: 5,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.purpleAccent,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_basket_outlined,
              ),
              label: 'My Ads'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle_outline,
              ),
              label: 'Add'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_outlined,
              ),
              label: 'Chat'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outlined,
              ),
              label: 'Account'),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}

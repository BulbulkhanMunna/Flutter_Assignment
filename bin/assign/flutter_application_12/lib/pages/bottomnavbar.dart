import 'package:flutter/material.dart';
import 'package:flutter_application_12/pages/account.dart';
import 'package:flutter_application_12/pages/add.dart';
import 'package:flutter_application_12/pages/chat.dart';
import 'package:flutter_application_12/pages/myadds.dart';

import 'home.dart';

class BottomNav extends StatefulWidget {
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex=0;
  final _pages = [
    Home(),
    MyAdd(),
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

import 'package:assignment_answer1/add.dart';
import 'package:assignment_answer1/home.dart';
import 'package:assignment_answer1/pages/account.dart';
import 'package:assignment_answer1/pages/chat.dart';
import 'package:assignment_answer1/pages/my_ads.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNavController extends StatefulWidget {
  

  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  int _currentIndex =0;

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
        selectedItemColor: Colors.purple,
        currentIndex: _currentIndex,
        onTap: (value) {
          _currentIndex = value;
          setState(() {
            
          });
          
        },
        
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket), label: 'My ads'),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
      ]),
      body: _pages[_currentIndex],
    );
  }
}

import 'dart:async';

import 'package:assignment_answer1/bottom_nav_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'learning-approach',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF4F5F7),
      ),
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
        Timer(
        Duration(seconds: 3),
        () => Navigator.push(context,
            CupertinoPageRoute(builder: (_) => BottomNavController())));
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Center(
        child: Text(
          'My App',
          style: TextStyle(fontSize: 35),
        ),
      ),
    );
  }
}

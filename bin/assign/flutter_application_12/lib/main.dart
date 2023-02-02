import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_12/pages/bottomnavbar.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lottie/lottie.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
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
  void initState() {
    super.initState();
     Timer(
        Duration(seconds: 2),
        () => Navigator.push(context,
            CupertinoPageRoute(builder: (_) => BottomNav())));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network('https://assets9.lottiefiles.com/private_files/lf30_nsqfzxxx.json'),
        
      ),
    );
  }
}
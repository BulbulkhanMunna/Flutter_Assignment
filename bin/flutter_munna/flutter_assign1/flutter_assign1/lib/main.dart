import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assign1/bottom_nav_controller.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lottie/lottie.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Box box = await Hive.openBox('Contact-list');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(20)))
                      ),
                      elevatedButtonTheme: ElevatedButtonThemeData(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green
                        )
                      )

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
            CupertinoPageRoute(builder: (_) => BottomNavController())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network(
            'https://assets9.lottiefiles.com/private_files/lf30_nsqfzxxx.json'),
      ),
    );
  }
}

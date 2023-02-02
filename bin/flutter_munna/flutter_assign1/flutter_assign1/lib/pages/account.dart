import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       floatingActionButton: FloatingActionButton(onPressed: (){}),
      body: Center(
        child: ElevatedButton(
                  onPressed: () {}, child: Text('This is elevated button2')),
      ),
    );
  }
}

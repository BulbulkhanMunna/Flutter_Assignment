import 'package:flutter/material.dart';

class Add extends StatelessWidget {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          print(_controller.text);
        }),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              SizedBox(height: 50),
              TextField(
                controller: _controller,
              ),
              TextFormField(),
            ],
          ),
        ));
  }
}

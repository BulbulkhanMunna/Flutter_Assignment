

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Chat extends StatefulWidget {
  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  TextEditingController _contactController = TextEditingController();
  TextEditingController _contactController1 = TextEditingController();
  TextEditingController _updatecontactController = TextEditingController( );

  Box? contactBox;

  @override
  void initState() {
    // TODO: implement initState
    contactBox = Hive.box('Contact-list');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 70, left: 25, right: 25),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(hintText: 'Enter your name :'),
                controller: _contactController,
                
              ),
               TextField(
                 decoration: InputDecoration(hintText: 'Enter your Phone Number :'),
                 keyboardType: TextInputType.number,
                controller: _contactController1,
               
               
              ),
              SizedBox(
                width: 350,
                child: ElevatedButton(
                  onPressed: () async {
                    try {
                      

                      final userInput = _contactController.text;
                      await contactBox!.add(userInput);
                      _contactController.clear();

                      final userInput1 = _contactController1.text;
                      await contactBox!.add(userInput1);
                      _contactController1.clear();
                      print('Added');
                    } catch (e) {
                      print('noAdded');
                    }
                  },
                  child: Text('Add new contact'),
                ),
              ),
                SizedBox(
                width: 350,
                
              
              ),
              Expanded(
                  child: ValueListenableBuilder(
                valueListenable: Hive.box('Contact-list').listenable(),
                builder: (context, box, Widget) {
                  return ListView.builder(
                      itemCount: contactBox!.keys.toList().length,
                      itemBuilder: (_, index) {
                        return Card(
                          elevation: 4,
                          child: ListTile(
                            trailing: SizedBox(
                              width: 100,
                              child: Row(
                                children: [
                                  IconButton(
                                      onPressed: () async {
                                        showDialog(
                                            context: context,
                                            builder: (_) {
                                              return Dialog(
                                                child: Container(
                                                  height: 200,
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 10,
                                                        vertical: 5),
                                                    child: Column(
                                                      children: [
                                                        TextField(
                                                          controller:
                                                              _updatecontactController,
                                                        ),
                                                        SizedBox(
                                                          width: 300,
                                                          child: ElevatedButton(
                                                            onPressed:
                                                                () async {
                                                              final updateDta =
                                                                  _updatecontactController
                                                                      .text;
                                                              _updatecontactController
                                                                  .clear();
                                                              contactBox!.putAt(
                                                                  index,
                                                                  updateDta);
                                                              print('Updated');

                                                              try {} catch (e) {
                                                                print(
                                                                    'noAdded');
                                                              }
                                                            },
                                                            child: Text(
                                                                'Update contact'),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            });
                                      },
                                      icon: Icon(
                                        Icons.edit,
                                        color: Colors.green,
                                      )),
                                  IconButton(
                                      onPressed: () async {
                                        try {
                                          contactBox!.deleteAt(index);
                                          print('deleted');
                                        } catch (e) {}
                                      },
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      )),
                                ],
                              ),
                            ),
                            title: Text(
                              contactBox!.getAt(index).toString(),
                            ),
                          ),
                        );
                      });
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}

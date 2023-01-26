import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  List<String> _categories = [
    'Food',
    'Electronics',
    'Groceries',
    'Dress',
    'Car',
    'Mobile'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 50, left: 30),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello Munna',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
                Text('Let`s make some app',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w300)),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 120,
                        width: 280,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 124, 50, 147),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15, left: 20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '40% Off During\nCovid 19',
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                Align(
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      'assets/veg.png',
                                      width: 82,
                                    )),
                              ]),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 120,
                        width: 280,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 244, 56, 56),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15, left: 20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '40% Off During\nCovid 19',
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                Align(
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      'assets/mbb.png',
                                      width: 50,
                                    )),
                              ]),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 120,
                        width: 280,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 56, 94, 244),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15, left: 20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '40% Off During\nCovid 19',
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                Align(
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      'assets/veg.png',
                                      width: 82,
                                    )),
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Categories',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 25),
                      child: Text(
                        'View all',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.red),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _categories.length,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              _categories[index],
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      height: 220,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 225, 222, 225),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                               
                                image: AssetImage('assets/watch.png'),
                                width: 140,
                                height: 110,
                                 
                                
                              ),
                              SizedBox(height: 5,),
                              Title(color: Colors.green, child: Text('Apple Watch',style: TextStyle(fontSize: 20,),),),
                              SizedBox(height: 5,),
                              Title(color: Colors.green, child: Text('Series 6 .Red',style: TextStyle(fontSize: 14,color: Colors.blueGrey),),),
                              SizedBox(height: 5,),
                              Title(color: Colors.green, child: Text('\$359',style: TextStyle(fontSize: 16,color: Colors.lightBlue),),),
                              
                            ]),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 220,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 225, 222, 225),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Image(
                               
                                image: AssetImage('assets/watch.png'),
                                width: 140,
                                height: 110,
                                 
                                
                              ),
                              SizedBox(height: 5,),
                              Title(color: Colors.green, child: Text('Apple Watch',style: TextStyle(fontSize: 20,),),),
                              SizedBox(height: 5,),
                              Title(color: Colors.green, child: Text('Series 6 .Red',style: TextStyle(fontSize: 14,color: Colors.blueGrey),),),
                              SizedBox(height: 5,),
                              Title(color: Colors.green, child: Text('\$359',style: TextStyle(fontSize: 16,color: Colors.lightBlue),),),
                              
                            ]),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 220,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 225, 222, 225),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Image(
                               
                                image: AssetImage('assets/watch.png'),
                                width: 140,
                                height: 110,
                                 
                                
                              ),
                              SizedBox(height: 5,),
                              Title(color: Colors.green, child: Text('Apple Watch',style: TextStyle(fontSize: 20,),),),
                              SizedBox(height: 5,),
                              Title(color: Colors.green, child: Text('Series 6 .Red',style: TextStyle(fontSize: 14,color: Colors.blueGrey),),),
                              SizedBox(height: 5,),
                              Title(color: Colors.green, child: Text('\$359',style: TextStyle(fontSize: 16,color: Colors.lightBlue),),),
                              
                            ]),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 220,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 225, 222, 225),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Image(
                               
                                image: AssetImage('assets/watch.png'),
                                width: 140,
                                height: 110,
                                 
                                
                              ),
                              SizedBox(height: 5,),
                              Title(color: Colors.green, child: Text('Apple Watch',style: TextStyle(fontSize: 20,),),),
                              SizedBox(height: 5,),
                              Title(color: Colors.green, child: Text('Series 6 .Red',style: TextStyle(fontSize: 14,color: Colors.blueGrey),),),
                              SizedBox(height: 5,),
                              Title(color: Colors.green, child: Text('\$359',style: TextStyle(fontSize: 16,color: Colors.lightBlue),),),
                              
                            ]),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 220,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 225, 222, 225),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Image(
                               
                                image: AssetImage('assets/watch.png'),
                                width: 140,
                                height: 110,
                                 
                                
                              ),
                              SizedBox(height: 5,),
                              Title(color: Colors.green, child: Text('Apple Watch',style: TextStyle(fontSize: 20,),),),
                              SizedBox(height: 5,),
                              Title(color: Colors.green, child: Text('Series 6 .Red',style: TextStyle(fontSize: 14,color: Colors.blueGrey),),),
                              SizedBox(height: 5,),
                              Title(color: Colors.green, child: Text('\$359',style: TextStyle(fontSize: 16,color: Colors.lightBlue),),),
                              
                            ]),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 220,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 225, 222, 225),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Image(
                               
                                image: AssetImage('assets/watch.png'),
                                width: 140,
                                height: 110,
                                 
                                
                              ),
                              SizedBox(height: 5,),
                              Title(color: Colors.green, child: Text('Apple Watch',style: TextStyle(fontSize: 20,),),),
                              SizedBox(height: 5,),
                              Title(color: Colors.green, child: Text('Series 6 .Red',style: TextStyle(fontSize: 14,color: Colors.blueGrey),),),
                              SizedBox(height: 5,),
                              Title(color: Colors.green, child: Text('\$359',style: TextStyle(fontSize: 16,color: Colors.lightBlue),),),
                              
                            ]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

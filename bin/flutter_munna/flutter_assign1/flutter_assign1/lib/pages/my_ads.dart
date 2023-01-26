import 'package:flutter/material.dart';

class MyAds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'My Ads',
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: Column(
            children: [
              TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    text: 'My Ads',
                    icon: Icon(Icons.shopping_basket),
                  ),
                  Tab(
                    text: 'My Favourite',
                    icon: Icon(Icons.favorite),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                         
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 225, 222, 225),
                        borderRadius: BorderRadius.circular(15),

                          ),
                           child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  'assets/watch.png',
                                  width: 82,
                                )),
                          ]),
                      ),
                         
                          
                         
                        ),
                        SizedBox(width: 10,),

                         
                      ],
                    ),
                    Container(
                      
                      child: Column(
                        children: [
                          Card(
                            elevation: 5,
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundImage: AssetImage('assets/watch.png'),
                              ),
                              title: Text('Apple Watch'),
                              subtitle: Text('Serise 6 .Red'),
                              trailing: Text(
                                '\$359',
                                style: TextStyle(color: Colors.lightBlue),
                              ),
                            ),
                          ),

                          Card(
                               elevation: 5,
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundImage: AssetImage('assets/watch.png'),
                              ),
                              title: Text('Apple Watch'),
                              subtitle: Text('Serise 6 .Red'),
                              trailing: Text(
                                '\$359',
                                style: TextStyle(color: Colors.lightBlue),
                              ),
                            ),

                          ),

                           Card(
                               elevation: 5,
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundImage: AssetImage('assets/watch.png'),
                              ),
                              title: Text('Apple Watch'),
                              subtitle: Text('Serise 6 .Red'),
                              trailing: Text(
                                '\$359',
                                style: TextStyle(color: Colors.lightBlue),
                              ),
                            ),

                          ),
                        ],
                        
                      ),

                      
                      
                    ),

                    
                  ],
                  
                ),
                
                
              )
            ],
          )),
    );
  }
}

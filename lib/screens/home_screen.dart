import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:octa_byte/screens/signin_screen.dart';

import '../utils/color_utils.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home, size: 32,color: Colors.white,),
      Icon(Icons.notification_important, size: 32,color: Colors.white,),
     // Icon(Icons.favorite, size: 32,color: Colors.white,),
     // Icon(Icons.settings, size: 32,color: Colors.white,),
      Icon(Icons.person, size: 32,color: Colors.white,),
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bg.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,


          //SafeArea(child: child!,),

      ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

            ),
          ),
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                  child: Wrap(
                    spacing: 20.0,
                    runSpacing:20.0,
                    children: [
                      SizedBox(
                          width:160.0,
                          height: 160.0,
                          child: Card(
                            color: Color.fromARGB(255, 21, 21, 21),
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ) ,
                            child:  Center(
                              child:  Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset("assets/icon/build.png",width: 100.0,),
                                    SizedBox(height: 10.0,),
                                    Text("PC Builder", style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0
                                    )),

                                  ],
                                ),
                              ),
                            ),

                          )
                      ),
                      SizedBox(
                          width:160.0,
                          height: 160.0,
                          child: Card(
                            color: Color.fromARGB(255, 21, 21, 21),
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ) ,
                            child:  Center(
                              child:  Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset("assets/icon/marketplace.png",width: 100.0,),
                                    SizedBox(height: 10.0,),
                                    Text("Marketplace", style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0
                                    )),

                                  ],
                                ),
                              ),
                            ),

                          )
                      ),
                      SizedBox(
                          width:160.0,
                          height: 160.0,
                          child: Card(
                            color: Color.fromARGB(255, 21, 21, 21),
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ) ,
                            child:  Center(
                              child:  Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset("assets/icon/community.png",width: 100.0,),
                                    SizedBox(height: 10.0,),
                                    Text("Community", style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0
                                    )),

                                  ],
                                ),
                              ),
                            ),

                          )
                      ),
                      SizedBox(
                          width:160.0,
                          height: 160.0,
                          child: Card(
                            color: Color.fromARGB(255, 21, 21, 21),
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ) ,
                            child:  Center(
                              child:  Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset("assets/icon/tutorial.png",width: 100.0,),
                                    SizedBox(height: 10.0,),
                                    Text("Tutorial", style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0
                                    )),

                                  ],
                                ),
                              ),
                            ),

                          )
                      ),



                    ],
                  ),
              ),
          ),
        ],
      ),

      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: hexStringToColor('#292929'),
        color: hexStringToColor('444444'),
        backgroundColor: Colors.transparent,
        height: 60,
        items: items,
    )
    );


  }
}

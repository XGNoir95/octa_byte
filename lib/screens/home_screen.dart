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
      Icon(Icons.favorite, size: 32,color: Colors.white,),
      Icon(Icons.settings, size: 32,color: Colors.white,),
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
          ),
          //SafeArea(child: child!,),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: hexStringToColor('#292929'),
        color: hexStringToColor('444444'),
        backgroundColor: Colors.transparent,
        height: 60,
        items: items,
    ));


  }
}

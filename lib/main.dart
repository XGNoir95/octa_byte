import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      // appBar: AppBar(
      //   backgroundColor: Colors.amber,
      //   title: Center(child: Text('Demo Project',style: TextStyle(letterSpacing: 1,fontSize: 20,fontWeight: FontWeight.bold))),
      // ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
            child: Image.asset('assets/logo.png'),
          ),
          Container(
            color: Colors.grey[850],
            padding: EdgeInsets.fromLTRB(0, 100, 0, 300),
            //child: Text('Demo mock',style: TextStyle(color: Colors.white)),
          )
        ],
      ),

    );
  }
}


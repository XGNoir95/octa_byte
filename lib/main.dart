import 'package:flutter/material.dart';
import 'package:octa_byte/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SD Project',
      home: const WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}



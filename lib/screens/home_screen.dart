import 'package:flutter/material.dart';
import 'package:octa_byte/screens/signin_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Logout"),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
          },
        ),
      ),
    );
  }
}

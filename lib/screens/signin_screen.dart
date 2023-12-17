import 'package:flutter/material.dart';
import 'package:octa_byte/reusable_widgets/reuseable_widget.dart';
import 'package:octa_byte/screens/home_screen.dart';
import 'package:octa_byte/screens/signup_screen.dart';
import 'package:octa_byte/utils/color_utils.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              //hexStringToColor("2B2B2B"),
              //hexStringToColor("ff272626"),
              //hexStringToColor("ff1e1e1e"),
              hexStringToColor("2F2F32"),
              hexStringToColor("ff0f0d0d"),
              hexStringToColor("000000"),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.005, 20, 0,
              ),
              child: Image.asset("assets/images/logo.png",height: 350,),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Text(
                "Sign In To Continue: ",
                style: TextStyle(
                  color: Colors.amber[600],
                  fontSize: 32,
                  fontFamily: 'RobotoCondensed',
                  //letterSpacing: 1
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 20),
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),

                  reusableTextField("UserName", Icons.person, false, _emailTextController),
                  SizedBox(
                    height: 30,
                  ),
                  reusableTextField("Password", Icons.lock, true, _passwordTextController),
                  SizedBox(
                    height: 30,
                  ),
                  signInSignUpButton(context, true, () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                  }),
                  signUpOption(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account?", style: TextStyle(fontSize: 18,color: Colors.white70,fontWeight: FontWeight.bold,fontFamily: 'RobotoCondensed',)),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(fontSize: 18,color: Colors.amber, fontWeight: FontWeight.bold,fontFamily: 'RobotoCondensed',),
          ),
        )
      ],
    );
  }
}
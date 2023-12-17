import 'package:flutter/material.dart';
import 'package:octa_byte/reusable_widgets/reuseable_widget.dart';
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
              child: Image.asset("assets/images/logo.png"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Text(
                "Welcome Back, Sign In Now!",
                style: TextStyle(
                  color: Colors.amber[600],
                  fontSize: 25,
                  fontFamily: 'Inter',
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
                  reusableTextField("Enter UserName", Icons.person_outline, false, _emailTextController),
                  SizedBox(
                    height: 30,
                  ),
                  reusableTextField("Enter Password", Icons.lock_outline, true, _passwordTextController),
                  SizedBox(
                    height: 30,
                  ),
                  signInSignUpButton(context, true, () {}),
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
        const Text("Don't have an account?", style: TextStyle(fontSize: 18,color: Colors.white70,fontWeight: FontWeight.bold,)),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(fontSize: 18,color: Colors.amber, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:octa_byte/reusable_widgets/reuseable_widget.dart';
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
              hexStringToColor("2B2B2B"),
              hexStringToColor("1B1B1B"),
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
                20, MediaQuery.of(context).size.height * 0.1, 20, 0,
              ),
              child: Image.asset("assets/images/logo.png"),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      reusableTextField("Enter UserName", Icons.person_outline, false, _emailTextController),
                      SizedBox(
                        height: 30,
                      ),
                      reusableTextField("Enter Password", Icons.lock_outline, true, _passwordTextController),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

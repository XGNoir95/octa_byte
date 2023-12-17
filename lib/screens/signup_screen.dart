import 'package:flutter/material.dart';
import 'package:octa_byte/reusable_widgets/reuseable_widget.dart';
import 'package:octa_byte/screens/home_screen.dart';
import 'package:octa_byte/utils/color_utils.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _conpasswordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // title: const Text(
        //   "Sign Up",
        //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        // ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            hexStringToColor("2F2F32"),
            hexStringToColor("ff0f0d0d"),
            hexStringToColor("000000")
          ],begin: Alignment.topCenter, end: Alignment.bottomCenter)),

        child:Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.0005, 10, 0,
              ),
              child: Image.asset("assets/images/logo.png",height: 180,),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Text(
                "Enter User Information:  ",
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
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Stack(children: <Widget>[
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.grey[900],
                        backgroundImage: AssetImage("assets/images/icon.png"),
                      ),
                      const Positioned(
                          bottom: -3,
                          right: 5,
                          child: Icon(
                            Icons.camera_alt_sharp,
                            color: Colors.amber,
                            size: 20,
                          )),
                    ],),
                  ),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("UserName", Icons.person, false, _userNameTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Email-Address" ,Icons.mail, false, _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Password", Icons.lock, true, _passwordTextController),
                  const SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Confirm Password", Icons.lock_person_sharp, true, _conpasswordTextController),
                const SizedBox(
                  height: 20,
                ),
                signInSignUpButton(context, true, (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                })
              ]
          ),)],
        ),
      ),
    );
  }
}

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:demo_app/Pages/authentication/Login.dart';
import 'package:demo_app/Pages/authentication/Register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // we will give media query height
          // double.infinity make it big as my parent allows
          // while MediaQuery make it big as per the screen

          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xfff594ec),
                  Color(0xfff5a5f0),
                  Color(0xffe6bffd),
                  Color(0xffb3d2f8),
                  Color(0xff9efadd),
                ]),
          ),

          child: Column(
            // even space distribution
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Congratulations",
                    style: TextStyle(
                      fontFamily: 'Cookie',
                      fontSize: 50,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Mom-to-be!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Cookie',
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  )
                ],
              ),
              Container(
                child: Image.asset(
                  'Image/First_Kick-Logo.png',
                  width: 200,
                  height: 200,
                  alignment: Alignment.topCenter,
                ),
              ),
              Column(
                children: <Widget>[
                  // the login button
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    // defining the shape
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "Log-In",
                      style: TextStyle(
                          fontFamily: 'Sand',
                          fontWeight: FontWeight.w900,
                          fontSize: 20),
                    ),
                  ),
                  // creating the signup button
                  SizedBox(height: 10),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupPage()));
                    },
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "Sign-Up",
                      style: TextStyle(
                          fontFamily: 'Sand',
                          fontWeight: FontWeight.w900,
                          fontSize: 20),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:ui';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xfff87aef),
                  Color(0xfff5a5f0),
                  Color(0xffe6bffd),
                  Color(0xffb3d2f8),
                  Color(0xff9efadd),
                ]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "Congratulations ",
                    style: TextStyle(
                      fontFamily: 'Cookie',
                      fontSize: 50,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

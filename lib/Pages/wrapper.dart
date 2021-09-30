import 'package:flutter/material.dart';
import 'package:demo_app/Pages/home/home.dart';
import 'package:demo_app/Pages/authentication/Authenticate.dart';

class wrapper extends StatelessWidget {
  const wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Must direct to authentication or home
    return Authenticate();
  }
}

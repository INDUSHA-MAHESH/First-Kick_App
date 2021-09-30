import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff7B9BF7),
              Color(0xffe896eb),
              Color(0xffB0F9D4)
            ]),
          ),
        ),
        title: Text(
          'First Kick',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 65,
              fontFamily: 'DancingRose'),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20),
          child: SizedBox(
            height: 20,
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10))),
        elevation: 30,
        shadowColor: Color(0xffEEDCEE),
        //brightness: Brightness.light,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Image.asset(
                'Image/First_Kick-Logo.png',
                width: 200,
                height: 200,
                alignment: Alignment.topCenter,
              ),
              margin: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 70.0),
            ),
            Expanded(
              child: Container(
                child: Text(
                  'Don\'t Have a Account?',
                  style: TextStyle(
                      fontFamily: 'Sand', fontWeight: FontWeight.bold),
                ),
                margin: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 300.0),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(150.0, 10, 10, 200.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  //forgot password screen
                },
                style: TextButton.styleFrom(),
                child: Text('Forgot Password'),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  print('Fuck');
                },
                child: Text('Login In'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(40.0, 50.0, 20.0, 50.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  primary: Color(0xffffb3ff),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

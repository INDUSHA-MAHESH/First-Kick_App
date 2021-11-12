import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.dark,
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
              fontSize: 55,
              fontFamily: 'DancingRose'),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(10),
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
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            size: 28,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(30, 0.0, 30, 10),
          height: MediaQuery.of(context).size.height - 85,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "SIGN UP",
                    style: TextStyle(fontFamily: 'Sanista', fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Experience Enjoyable Pregnancy!",
                    style: TextStyle(
                        fontFamily: 'Sanista',
                        fontSize: 15,
                        color: Colors.black54),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  inputFile(label: "Username"),
                  inputFile(label: "Email"),
                  inputFile(label: "Password", obscureText: true),
                  inputFile(label: "Confirm Password ", obscureText: true),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 3, left: 3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                    )),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {},
                  color: Color(0xffffb3ff),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(
                      fontFamily: 'Sand',
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already have an account?",
                    style: TextStyle(fontFamily: 'Sand', fontSize: 15),
                  ),
                  Text(
                    " LOGIN",
                    style: TextStyle(
                        fontFamily: 'Sand',
                        fontWeight: FontWeight.w900,
                        fontSize: 18),
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

// we will be creating a widget for text field
Widget inputFile({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black54),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black54))),
      ),
      SizedBox(
        height: 20,
      )
    ],
  );
}

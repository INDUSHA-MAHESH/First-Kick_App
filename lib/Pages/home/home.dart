import 'package:flutter/material.dart';

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
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xff7B9BF7),
                  Color(0xffe896eb),
                  Color(0xffB0F9D4)
                ]),
              ),
              child: Text(
                'FIRST KICK',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 55,
                    fontFamily: 'DancingRose'),
              ),
            ),
            ListTile(
              title: const Text(
                'Home',
                style: TextStyle(
                    fontFamily: 'Sand',
                    fontWeight: FontWeight.w900,
                    fontSize: 18),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Daily Diet',
                style: TextStyle(
                    fontFamily: 'Sand',
                    fontWeight: FontWeight.w900,
                    fontSize: 18),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'My Baby',
                style: TextStyle(
                    fontFamily: 'Sand',
                    fontWeight: FontWeight.w900,
                    fontSize: 18),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Mommy Meter',
                style: TextStyle(
                    fontFamily: 'Sand',
                    fontWeight: FontWeight.w900,
                    fontSize: 18),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Bump Journal',
                style: TextStyle(
                    fontFamily: 'Sand',
                    fontWeight: FontWeight.w900,
                    fontSize: 18),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'My Records',
                style: TextStyle(
                    fontFamily: 'Sand',
                    fontWeight: FontWeight.w900,
                    fontSize: 18),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              height: 55,
              thickness: 0.5,
              color: Colors.pink.withOpacity(0.3),
              indent: 32,
              endIndent: 32,
            ),
            ListTile(
              leading: const Icon(
                Icons.stroller_sharp,
                color: Colors.deepPurple,
              ),
              title: const Text(
                'My Profile',
                style: TextStyle(
                    fontFamily: 'Sand',
                    fontWeight: FontWeight.w900,
                    fontSize: 18),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.deepPurple,
              ),
              title: const Text(
                'Settings',
                style: TextStyle(
                    fontFamily: 'Sand',
                    fontWeight: FontWeight.w900,
                    fontSize: 18),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

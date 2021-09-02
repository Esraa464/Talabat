import 'dart:async';
import 'package:flutter/material.dart';
import 'package:login_screen/const/colors.dart';
import 'package:login_screen/screens/sign_up_page/view.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SignUpScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'talabat',
              style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              ' "Food delivery platform for expo 2020"',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

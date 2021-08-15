import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_screen/screens/sign_in_page/view.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SignInScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
          child: Text(
        'talabat',
        style: TextStyle(
            fontSize: 70, fontWeight: FontWeight.bold, color: Colors.white),
      )),
    );
  }
}

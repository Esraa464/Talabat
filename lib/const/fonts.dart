import 'package:flutter/material.dart';

class BoldFont extends StatelessWidget {
  String text;

  BoldFont({this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),);
  }
}

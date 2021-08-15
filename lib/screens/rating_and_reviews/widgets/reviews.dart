import 'package:flutter/material.dart';

class Reviews  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder:(context,index)=>Column(
      children: [
        Row(children: [
          Text('Amazing'),
          Text('(Today)')
        ],),
        Text('ممتاز'),
        Text('- Gannat B')
      ],
    ));
  }
}

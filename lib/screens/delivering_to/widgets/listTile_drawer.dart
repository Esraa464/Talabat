import 'package:flutter/material.dart';
class ListTileDrawer extends StatefulWidget {
  String text;
  IconData icon;

  ListTileDrawer(
    this.text,
    this.icon,
  );
  @override
  _ListTileDrawerState createState() => _ListTileDrawerState();
}
class _ListTileDrawerState extends State<ListTileDrawer> {
  bool isSelected = false;
  bool isPressed=false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       Container(
       //    // decoration: BoxDecoration(borderRadius: BorderRadius.only()),
          width: 10,
          height: 30,
          color: Colors.deepPurple,),

        Expanded(
          child: ListTile(
            onTap: () {

            },
            leading: Icon(
              widget.icon,
              color: Colors.black,
              size: 30,
            ),
            title: Text(
              widget.text,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:login_screen/const/colors.dart';

class FiltersButtonSheet extends StatefulWidget {
  @override
  _FiltersButtonSheetState createState() => _FiltersButtonSheetState();
}

class _FiltersButtonSheetState extends State<FiltersButtonSheet> {
  bool checkBoxValue = false;
  List<String> checkedBoxTitle = [];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.clear,
                color: Colors.black,
              ),
              Text(
                'Filters',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                'Clear all',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: mainColor),
              )
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemBuilder: (ctx, int) => Stack(children: [
            Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: CheckboxListTile(
                  activeColor: mainColor,
                  title: Text('ssssss'),
                  value: checkBoxValue,
                  onChanged: (bool value) {
                    setState(() {
                      checkBoxValue = value;
                    });
                  }),
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                  //color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(4)),
            ),
          ]),
          itemCount: 6,
        )

        // CheckboxListTile(value:6, onChanged: onChanged)
      ],
    );
  }
}

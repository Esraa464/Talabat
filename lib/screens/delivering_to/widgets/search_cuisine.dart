import 'package:flutter/material.dart';
import 'package:login_screen/const/colors.dart';

class SearchCuisine extends StatelessWidget {
//  List <String>searchCuisine =[
// 'Shawerma',
//    'Soup',
//    'Street'
//  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(

        // physics: NeverScrollableScrollPhysics(),
        //   padding: EdgeInsets.all(10),
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
                    fontSize: 15, fontWeight: FontWeight.w600, color: mainColor),
              )
            ],
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(5),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3),
              ),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              ),
              suffixIcon: Icon(
                Icons.clear,
                color: Colors.black,
                size: 22,
              ),
              hintText: 'Search cuisine',
              hintStyle: TextStyle(color: Colors.grey[700], fontSize: 15)),
        ),
        Expanded(
          child: ListView.builder(
physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(vertical: 20),
            shrinkWrap: true,
            itemCount: 16,
            itemBuilder: (ctx,index) => Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Soup",
                style: TextStyle(fontSize: 20),
              ),
            ),

          ),
        )
      ]),
    );
  }
}

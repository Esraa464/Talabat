import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:login_screen/const/strings.dart';

class RatingRow extends StatelessWidget {
  String text;
  RatingRow(this.text);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(orderPackaging),
        RatingBar.builder(
          itemSize: 20,
          initialRating: 0,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          // itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
          itemBuilder: (context,index) => Icon(
            Icons.star,
            color: Colors.deepPurple,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
        Text('4.5'),
      ],
    );
  }
}

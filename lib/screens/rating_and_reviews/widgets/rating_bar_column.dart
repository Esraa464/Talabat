import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:login_screen/const/strings.dart';

class RatingColumn extends StatelessWidget {
  String text;
  RatingColumn(this.text);
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          itemBuilder: (context, _) => Icon(
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

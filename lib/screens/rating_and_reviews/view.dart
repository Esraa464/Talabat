import 'package:flutter/material.dart';
import 'package:login_screen/const/strings.dart';
import 'package:login_screen/screens/rating_and_reviews/widgets/rating_bar_column.dart';
import 'package:login_screen/screens/rating_and_reviews/widgets/reviews.dart';
import 'package:login_screen/widgets/app_bar.dart';

class RatingAndReviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(ratingAndReviews),
      body: ListView(
        children: [
          Row(
            children: [
              Text(veryGood),
              Icon(Icons.emoji_emotions_rounded),
            ],
          ),
          Text(basedOn),
          RatingRow(orderPackaging),
          RatingRow(valueForMoney),
          RatingRow(deliveryTime),
          RatingRow(qualityOfFood),
          Reviews()
        ],
      ),
    );
  }
}

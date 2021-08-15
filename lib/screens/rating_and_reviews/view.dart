import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:login_screen/const/colors.dart';
import 'package:login_screen/const/strings.dart';
import 'package:login_screen/screens/rating_and_reviews/widgets/rating_bar_column.dart';
import 'package:login_screen/screens/rating_and_reviews/widgets/reviews.dart';
import 'package:login_screen/widgets/app_bar.dart';

class RatingAndReviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(ratingAndReviews),
      body: ListView(
        // padding: ,
        children: [
          Row(
            children: [
              Text(veryGood),
              Icon(Icons.emoji_emotions_rounded),
            ],
          ),
          Text(basedOn),
          RatingColumn(orderPackaging),
          RatingColumn(valueForMoney),
          RatingColumn(deliveryTime),
          RatingColumn(qualityOfFood),
          Reviews()
        ],
      ),
    );
  }
}

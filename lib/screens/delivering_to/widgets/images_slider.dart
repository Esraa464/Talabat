import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class ImagesSlider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
    height: MediaQuery.of(context).size.height/4,
      child: Carousel(
        indicatorBgPadding: .7,
        dotSize: 5,
        dotSpacing:12 ,
        autoplay: false,
        dotColor: Colors.deepPurple,
        dotIncreasedColor: Colors.deepPurple,
         dotBgColor: Colors.white,
        images: [
          Image.network(
            'https://www.insauga.com/sites/default/files/article/2018/09/transfat.jpg',
            fit: BoxFit.cover,
            //   height:20,
          ),
          Image.network('https://www.insauga.com/sites/default/files/article/2018/09/transfat.jpg' ,
            fit: BoxFit.cover,
          ),
          Image.network(
            'https://www.insauga.com/sites/default/files/article/2018/09/transfat.jpg',
            fit: BoxFit.cover,
            //   height:20,
          ),

        ],
      ),
    );
  }

}
import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 20,
      height: MediaQuery.of(context).size.height *.25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 9,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius:BorderRadius.circular(10,),

                    child: Image.network('https://tse2.mm.bing.net/th?id=OIP.lEa60MoPEz7kNWZQBc_a3wHaEo&pid=Api&P=0&w=250&h=157',height: 100,),
                  ),
                  Text('Food',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                ],
              ),
            );
          }),



    );
  }
}

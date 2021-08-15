import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:login_screen/const/colors.dart';
import 'package:login_screen/const/fonts.dart';
import 'package:login_screen/screens/delivering_to/widgets/delivery_drawer.dart';
import 'package:login_screen/screens/delivering_to/widgets/image_container.dart';
import 'package:login_screen/screens/delivering_to/widgets/images_slider.dart';
import 'package:login_screen/screens/delivering_to/widgets/searchForRestaurants_page.dart';

class DeliveringTo extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Container(
          width: MediaQuery.of(context).size.width * .8,
          child: Drawer(child: DrawerView())),
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 6,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          )
        ],
        backgroundColor: white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Delivering to',
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'El-GALLA Street',
                  style: TextStyle(color: Colors.deepPurple, fontSize: 15),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.deepPurple,
                )
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: ListView(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) => Container(
                              height: MediaQuery.of(context).size.height*0.85,
                             decoration: BoxDecoration(borderRadius: BorderRadius.only(
                               topLeft: Radius.circular(25),
                               topRight: Radius.circular(25),
                             )),

                            )),
                    child: Row(
                      children: [
                        Icon(Icons.filter_alt_sharp),
                        Text('Filter'),
                      ],
                    ),
                  ),
                  InkWell(
                    child: Row(
                      children: [
                        Icon(Icons.ac_unit_rounded),
                        Text('Cuisines'),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => SearchPage())),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        Text('Search'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            BoldFont(
              text: 'what would you like to order',
            ),
            BoldFont(
              text: ',Ahmed ?',
            ),
            ImageContainer(),
            ImagesSlider(),
            Text('popular brands near you'),
            ImageContainer(),
            BoldFont(
              text: 'Groceries',
            )
          ],
        ),
      ),
    );
  }
}

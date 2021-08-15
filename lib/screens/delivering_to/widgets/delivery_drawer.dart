import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/const/fonts.dart';
import 'package:login_screen/screens/delivering_to/widgets/listTile_drawer.dart';

class DeliveryDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal:0,vertical: 50),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Icon(Icons.person),
              height: 45,
              width: 45,
              decoration:
              BoxDecoration(borderRadius:BorderRadius.circular(30),border: Border.all(color: Colors.black)),
            ),
            Column(
              children: [
                BoldFont(text:'Hi Guest'),
                Text('Egypt',style: TextStyle(fontSize: 15,color: Colors.grey),)
              ],
            ),
            Icon(Icons.settings)
          ],
        ),
        SizedBox(height: 30,),
        ListTileDrawer('Home',Icons.house,),
        ListTileDrawer('Your Orders',Icons.list_alt_outlined,),
        ListTileDrawer('Offers',Icons.local_offer,),
        ListTileDrawer('Notifications',Icons.notifications,),
        ListTileDrawer('Talabat Pay',Icons.payment,),
        ListTileDrawer('Vouchers',Icons.how_to_vote,),
        ListTileDrawer('Get help',Icons.mic,),
        ListTileDrawer('About us',Icons.add_box_outlined,),
      ],
    );
  }
}

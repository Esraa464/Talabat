import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/const/fonts.dart';
class DrawerView extends StatefulWidget {
  static final List<String> _listViewData = [
    'Home',
    'Your Orders',
    'Offers',
    'Notifications',
    'Talabat Pay',
    'Vouchers',
    'Get help',
    'About us'
  ];
  static final List<IconData> _iconsData = [
    Icons.house,
    Icons.list_alt_outlined,
    Icons.local_offer,
    Icons.notifications,
    Icons.payment,
    Icons.how_to_vote,
    Icons.mic,
    Icons.add_box_outlined,
  ];

  @override
  _DrawerState createState() => _DrawerState();
}

class _DrawerState extends State<DrawerView> {
  int _currentSelected = 0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children:[
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 20),
          child: Row(
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
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: DrawerView._listViewData.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: _currentSelected == index
                          ? Colors.deepPurple
                          : Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(7),
                          bottomRight: Radius.circular(7))),
                  width:6,
                  height: 45,
                ),
                Expanded(
                  child: ListTile(
                    leading: Icon(
                      DrawerView._iconsData[index],
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text(
                      DrawerView._listViewData[index],
                      style: TextStyle(fontSize: 20),
                    ),
                    onTap: () {
                      setState(() {
                        _currentSelected = index;
                      });
                    },
                  ),
                ),
              ],
            );
          },


        ),
      ]
    );
  }
}

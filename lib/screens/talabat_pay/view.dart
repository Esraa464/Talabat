import 'package:flutter/material.dart';
import 'package:login_screen/widgets/app_bar.dart';
import 'package:login_screen/const/strings.dart';

class TalabatPay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
        appBar: appBar(talabatPay),
        body: Column(
          children: [
            Expanded(
              child: Container(
                // width:50,
                color: Colors.lightBlueAccent,
                // height: 50,
              ),
            ),
            Expanded(
              child: Container(
                // width:50,
                color: Colors.white,
                // height: 50,
              ),
            ),
          ],
        )
    );
  }
}

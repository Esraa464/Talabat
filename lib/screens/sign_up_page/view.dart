import 'package:flutter/material.dart';
import 'package:login_screen/const/colors.dart';
import 'package:login_screen/const/strings.dart';
import 'package:login_screen/screens/login_with_email_page/view.dart';
import 'package:login_screen/widgets/app_bar.dart';
import 'package:login_screen/screens/sign_up_page/widgets/login_button.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(txt_sign_in),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 40, bottom: 60),
          child: SingleChildScrollView(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(txt_app_name,
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,

                    )),
                Text(txt_app_hint,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[700],
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Text(txt_register,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 17),
                  child: Text(txt_register_hint,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey[700],
                      )),
                ),
                loginButton(
                  text: txt_login_with_google,
                  imgUrl: url_google,
                  bg: Colors.blue,
                  isBordered: false,
                  isTextColor: false,
                ),
                loginButton(
                  text: txt_login_with_facebook,
                  imgUrl: url_facebook,
                ),
                loginButton(text: txt_login_with_gmail, imgUrl: url_gmail,press: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginWithEmail()))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

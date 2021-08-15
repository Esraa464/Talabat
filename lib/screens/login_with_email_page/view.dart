import 'package:flutter/material.dart';
import 'package:login_screen/const/strings.dart';
import 'package:login_screen/screens/forget_password_page/view.dart';
import 'package:login_screen/screens/new_user_register_page/view.dart';
import 'package:login_screen/widgets/app_bar.dart';
import 'package:login_screen/widgets/bold_font.dart';
import 'package:login_screen/widgets/custom_normal_font.dart';
import 'package:login_screen/widgets/default_text_form_field.dart';
import 'package:login_screen/widgets/login_button.dart';
import 'package:login_screen/widgets/main_button.dart';

class LoginWithEmail extends StatefulWidget {
  @override
  _LoginWithEmailState createState() => _LoginWithEmailState();
}

class _LoginWithEmailState extends State<LoginWithEmail> {
  var formKey = GlobalKey<FormState>();

  TextEditingController emailController;

  TextEditingController passwordController;
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(txt_sign_in),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              boldText(contact_with_email),
              DefaultTextFormField(
                  hintTxt: email,
                  type: TextInputType.emailAddress,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Email must not be empty';
                    }
                    return null;
                  }),
              DefaultTextFormField(
                  isPassword: true,
                  hintTxt: password,
                  type: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Password must not be empty';
                    }
                    return null;
                  }),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 19),
                child: mainButton(
                    text: txt_sign_in,
                    press: () {
                      if (formKey.currentState.validate()) {
                        print(emailController.text);
                        print(passwordController.text);
                      }
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (_) => ForgetPassword())),
                      child: customNormalFont(
                          text: txt_forget_password,
                          fontSize: 14.0,
                          fontWight: FontWeight.bold)),
                  InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (_) => NewUserRegister())),
                      child: customNormalFont(
                          text: register_new_user,
                          fontSize: 14.0,
                          fontWight: FontWeight.bold))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

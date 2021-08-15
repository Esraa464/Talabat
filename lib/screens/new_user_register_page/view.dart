import 'package:flutter/material.dart';
import 'package:login_screen/const/colors.dart';
import 'package:login_screen/const/strings.dart';
import 'package:login_screen/widgets/app_bar.dart';
import 'package:login_screen/widgets/custom_normal_font.dart';
import 'package:login_screen/widgets/default_text_form_field.dart';
import 'package:login_screen/widgets/main_button.dart';

class NewUserRegister extends StatefulWidget {
  @override
  _NewUserRegisterState createState() => _NewUserRegisterState();
}

class _NewUserRegisterState extends State<NewUserRegister> {
  bool checkedBoxValue = false;
  var formKey = GlobalKey<FormState>();
  TextEditingController firstNameController;
  TextEditingController secondNameController;
  TextEditingController emailController;
  TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(register_new_user),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Text(
                continue_with_email,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              DefaultTextFormField(
                  hintTxt: firstName,
                  type: TextInputType.text,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'First Name must not be empty';
                    }
                    return null;
                  }),
              DefaultTextFormField(
                  hintTxt: lastName,
                  type: TextInputType.text,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Second Name must not be empty';
                    }
                    return null;
                  }),
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
                  isHidden: true,
                  isPassword: true,
                  hintTxt: choose_password,
                  type: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Password must not be empty';
                    }
                    return null;
                  }),
              Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        password_length,
                        style: TextStyle(color: Colors.grey[600], fontSize: 13),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: Checkbox(
                                    value: checkedBoxValue,
                                    onChanged: (bool value) {
                                      setState(() {
                                        checkedBoxValue = value;
                                      });
                                    },
                                    activeColor: mainColor,
                                  ),
                                  height: 18,
                                  width: 18,
                                  decoration: BoxDecoration(
                                      //color: Colors.deepOrange,
                                      borderRadius: BorderRadius.circular(4)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Text(
                              receive_latest_offers,
                              style: TextStyle(),
                            ),
                          ],
                        ),
                      ),
                      mainButton(
                          text: register_new_user,
                          press: () {
                            if (formKey.currentState.validate()) {
                              print(firstNameController.text);
                              print(secondNameController.text);
                              print(emailController.text);
                              print(passwordController.text);
                            }
                          }),
                      Row(children: [
                        customNormalFont(
                            text: when_registering_your_account,
                            isColored: false,
                            fontSize: 12.0),
                        customNormalFont(text: privacy_policy, fontSize: 12.0),
                        customNormalFont(
                            text: and, isColored: false, fontSize: 12.0),
                        customNormalFont(text: terms_and, fontSize: 12.0),
                      ]),
                      customNormalFont(text: conditions),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

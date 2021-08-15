import 'package:flutter/material.dart';
import 'package:login_screen/const/strings.dart';
import 'package:login_screen/widgets/alert_dialog.content.dart';
import 'package:login_screen/widgets/app_bar.dart';
import 'package:login_screen/widgets/default_text_form_field.dart';
import 'package:login_screen/widgets/main_button.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController emailController;

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title_forget_password),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              DefaultTextFormField(
                  type: TextInputType.emailAddress,
                  isHidden: true,
                  hintTxt: email,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Password must not be empty';
                    }
                    return null;
                  }),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: mainButton(
                  text: title_forget_password,
                  press: () {
                    if (formKey.currentState.validate()) {
                      // print(emailController.text);
                      showDialog(
                          context: context,
                          builder: (context) =>
                              AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                title: Center(child: Text('Confirm Code',
                                  style: TextStyle(fontSize: 20),)),
                                content: Container(
                                  height: 150,
                                  child: AlertContent(),
                                ),
                              ));
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

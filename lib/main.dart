import 'package:flutter/material.dart';
import 'package:login_screen/screens/delivering_to/view.dart';
import 'package:login_screen/screens/forget_password_page/view.dart';
import 'package:login_screen/screens/login_with_email_page/view.dart';
import 'package:login_screen/screens/new_user_register_page/view.dart';
import 'package:login_screen/screens/rating_and_reviews/view.dart';
import 'package:login_screen/screens/splash/view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:login_screen/screens/talabat_pay/view.dart';
import 'package:login_screen/widgets/appLocal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return
          Directionality(textDirection: TextDirection.rtl, child: child);
      },
      debugShowCheckedModeBanner: false,
      // localizationsDelegates: [
      //   AppLocale.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // supportedLocales: [
      //   Locale('en', ''), // English, no country code
      //   Locale('ar', ''), // Spanish, no country code
      // ],
      // localeResolutionCallback: (currentLang, supportLang) {
      //   if (currentLang != null) {
      //     for (Locale local in supportLang) {
      //       if(local.languageCode==currentLang.languageCode){
      //         return currentLang;
      //       }
      //     }
      //   }
      //   return supportLang.first;
      // },
      home: SplashScreen(),
    );
  }
}

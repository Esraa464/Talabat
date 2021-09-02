import 'package:flutter/material.dart';
import 'package:login_screen/screens/delivering_to/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // builder: (context, child) {
      //   return
      //     Directionality(textDirection: TextDirection.rtl, child: child);
      // },
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
      home: DeliveringTo(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:login_screen/const/colors.dart';

Widget customNormalFont({@required text,isColored=true,fontSize,fontWight}){
  return Text(
    text,style: TextStyle(color: isColored?mainColor:Colors.grey[700],fontSize: fontSize,fontWeight:fontWight),
  );
}

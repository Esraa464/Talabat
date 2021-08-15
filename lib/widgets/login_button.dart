import 'package:flutter/material.dart';

Widget loginButton(
    {@required text,
    imgUrl,
    press,
    bg = Colors.white,
    isBordered = true,
    isTextColor = true}) {
  return InkWell(
    onTap: press,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(top: 15),
      child: Row(children: [
        Container(
          // padding: const EdgeInsets.only(right: 5),
          width: 25,
          height: 25,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: NetworkImage(
                  imgUrl,
                ),
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(5)),
        ),
        Expanded(
            child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 20, color: isTextColor ? Colors.black : Colors.white),
          ),
        )),
      ]),
      height: 52,
      width: 270,
      decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(10),
          border: isBordered ? Border.all(color: Colors.grey) : null),
    ),
  );
}

import 'package:flutter/material.dart';

Widget customButton(BuildContext context,
    {required VoidCallback onTap,
      required String text,
      Color? bgColor,
      Color? textColor}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: bgColor ?? Colors.white,
            borderRadius: BorderRadius.circular(8)),
        child: Text(
          text,
          style: TextStyle(
              color: textColor ?? Colors.green, fontFamily: ''),
        )),
  );
}

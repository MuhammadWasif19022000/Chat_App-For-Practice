import 'package:flutter/material.dart';

const textInputDecoartion = InputDecoration(
  labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xffee7b64), width: 2),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xffee7b64), width: 2),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xffee7b64), width: 2),
  ),
);

void showSnackBar(context, color, message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      message,
      // ignore: prefer_const_constructors
      style: TextStyle(
        fontSize: 14,
      ),
    ),
    // ignore: prefer_const_constructors
    duration: Duration(seconds: 2),
    action: SnackBarAction(
      label: "Ok",
      onPressed: () {},
      textColor: Colors.white,
    ),
    backgroundColor: color,
  ));
}

import 'package:flutter/material.dart';

class Constants {
  static String apiKey = "AIzaSyDtnTLx-RlaKVCNkElDA5Yzk-dCGJhw4mo";
  static String appId = "1:527070146420:web:9e7cd74aee104d98290621";
  static String messagingSenderId = "527070146420";
  static String projectId = "flutter-chat-app-fb65b";
  // ignore: prefer_const_constructors
  final priamryColor = Color(0xffee7b64);
}

void nextScreen(context, page) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page()),
  );
}

void nextScreenReplace(context, page) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => page()),
  );
}

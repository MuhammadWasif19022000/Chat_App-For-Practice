// ignore_for_file: prefer_final_fields, unused_field, prefer_const_constructors

import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/helper/helper.dart';
import 'package:chat_app/pages/auth/login.dart';
import 'package:chat_app/pages/home.dart';
import 'package:chat_app/shared/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // if (kIsWeb) {
  //   await Firebase.initializeApp(
  //       options: FirebaseOptions(
  //           apiKey: Constants.apiKey,
  //           appId: Constants.appId,
  //           messagingSenderId: Constants.messagingSenderId,
  //           projectId: Constants.projectId));
  // } else {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //}

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isSigned = false;
  @override
  void initState() {
    super.initState();
    getUserLoggedInStatus();
  }

  getUserLoggedInStatus() async {
    await HelperFunction.getUserLoggedInStatus().then((value) {
      if (value != null) {
        setState(() {
          _isSigned = value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Constants().priamryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: _isSigned ? HomePage() : LoginPage(),
    );
  }
}

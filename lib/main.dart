import 'package:flutter/material.dart';
import 'package:social_media_ui/Login.dart';
import 'package:social_media_ui/MainScreen.dart';
import 'package:social_media_ui/SignUp.dart';
import 'package:social_media_ui/SplashScreen.dart';
import 'package:social_media_ui/UserDetailPage.dart';

import 'Configs/Colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF181A20),
        colorScheme: ColorScheme.light(primary: purpleColor),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

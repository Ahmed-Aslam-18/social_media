import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_media_ui/Configs/Colors.dart';
import 'package:social_media_ui/Login.dart';
import 'package:social_media_ui/Configs/ScreenUtils.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    initialize();
    super.initState();
  }

  initialize() async {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context)=>Login())
      );
    });
  }

  bool isthere = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Image.asset(
          'Assets/evvovvwhite.png',
          height: getDeviceHight(context) * 0.15,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}


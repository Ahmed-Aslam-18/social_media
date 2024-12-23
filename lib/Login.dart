import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:social_media_ui/Configs/ScreenUtils.dart';
import 'package:social_media_ui/MainScreen.dart';
import 'package:social_media_ui/SignUp.dart';
import 'package:social_media_ui/Widgets/CustomizedContainer.dart';
import 'package:social_media_ui/Widgets/CustomizedTextFields.dart';

import 'Configs/Colors.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: getDeviceHight(context) * 0.15,
            ),
            Center(
              child: Image.asset(
                'Assets/evvovvwhite.png',
                height: getDeviceHight(context) * 0.1,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: getDeviceHight(context) * 0.03,
            ),
            AutoSizeText(
              'Welcome Back!',
              style: subtitle(context).copyWith(
                  color: Colors.white,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                  fontSize: getDeviceWidth(context) * 0.09),
            ),
            AutoSizeText(
              'Login and let\'s get connected',
              style: subtitle(context).copyWith(
                  color: greyColor, fontSize: getDeviceWidth(context) * 0.045),
            ),
            SizedBox(
              height: getDeviceHight(context) * 0.05,
            ),
            CustomizedTextFields(
              hintText: "Enter email",
              prefixWidget: Icon(
                Icons.person,
                color: Color(0x656A7B63),
              ),
            ),
            SizedBox(
              height: getDeviceHight(context) * 0.03,
            ),
            CustomizedTextFields(
              hintText: "Enter password",
              isObscure: true,
              prefixWidget: Icon(
                Icons.lock,
                color: Color(0x656A7B63),
              ),
            ),
            SizedBox(
              height: getDeviceHight(context) * 0.01,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: getDeviceWidth(context) * 0.05),
                child: AutoSizeText(
                  'Forgot password?',
                  style: subtitle(context).copyWith(
                      color: greyColor,
                      fontSize: getDeviceWidth(context) * 0.04),
                ),
              ),
            ),
            SizedBox(
              height: getDeviceHight(context) * 0.03,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => MainScreen(),
                    ),
                  );
                },
                child: CustomizedContainer(
                  width: getDeviceWidth(context) * 0.45,
                  color: purpleColor,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getDeviceWidth(context) * 0.05),
                    child: AutoSizeText(
                      'Log in',
                      style: subtitle(context).copyWith(
                          color: Color(0xFFFFFFFF),
                          fontSize: getDeviceWidth(context) * 0.06,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: getDeviceHight(context) * 0.02,
            ),
            Center(
              child: AutoSizeText(
                'Or connect using',
                style: subtitle(context).copyWith(
                    color: greyColor, fontSize: getDeviceWidth(context) * 0.04),
              ),
            ),
            SizedBox(
              height: getDeviceHight(context) * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomizedContainer(
                  width: getDeviceWidth(context) * 0.25,
                  color: blueColor,
                  child: AutoSizeText(
                    'facebook',
                    style: subtitle(context).copyWith(
                        color: Colors.white,
                        fontSize: getDeviceWidth(context) * 0.045,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: getDeviceWidth(context) * 0.05,
                ),
                CustomizedContainer(
                  width: getDeviceWidth(context) * 0.25,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Image.asset(
                        'Assets/google.png',
                        width: getDeviceWidth(context) * 0.055,
                        fit: BoxFit.contain,
                      ),
                      AutoSizeText(
                        'Google',
                        style: subtitle(context).copyWith(
                          color: Colors.black,
                          fontSize: getDeviceWidth(context) * 0.045,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: getDeviceHight(context) * 0.035,
            ),
            Center(
                child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => SignUp()));
              },
              child: RichText(
                text: TextSpan(
                  text: 'Don\'t have an account? ',
                  style: subtitle(context).copyWith(
                      color: greyColor,
                      fontSize: getDeviceWidth(context) * 0.045),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Signup',
                      style: subtitle(context).copyWith(
                          color: purpleColor,
                          fontWeight: FontWeight.bold,
                          fontSize: getDeviceWidth(context) * 0.045),
                    ),
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}

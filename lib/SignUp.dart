import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:social_media_ui/Configs/Colors.dart';
import 'package:social_media_ui/Configs/ScreenUtils.dart';
import 'package:social_media_ui/Widgets/CustomizedContainer.dart';
import 'package:social_media_ui/Widgets/CustomizedTextFields.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: getDeviceHight(context) * 0.07,
            ),
            AutoSizeText(
              'Welcome To',
              style: subtitle(context).copyWith(
                  color: Colors.white,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                  fontSize: getDeviceWidth(context) * 0.09),
            ),
            SizedBox(
              height: getDeviceHight(context) * 0.015,
            ),
            Center(
              child: Image.asset(
                'Assets/evvovvwhite.png',
                height: getDeviceHight(context) * 0.1,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: getDeviceHight(context) * 0.05,
            ),
            CustomizedTextFields(
              hintText: "Name",
              prefixWidget: Icon(
                Icons.person,
                color: Color(0x656A7B63),
              ),
            ),
            SizedBox(
              height: getDeviceHight(context) * 0.03,
            ),
            CustomizedTextFields(
                hintText: "@username",
                prefixWidget: Container(
                  width: 0,
                  height: 0,
                )),
            SizedBox(
              height: getDeviceHight(context) * 0.03,
            ),
            CustomizedTextFields(
                hintText: "Email",
                prefixWidget: Container(
                  width: 0,
                  height: 0,
                )),
            SizedBox(
              height: getDeviceHight(context) * 0.03,
            ),
            CustomizedTextFields(
                hintText: "Password",
                isObscure: true,
                prefixWidget: Container(
                  width: 0,
                  height: 0,
                )),
            SizedBox(
              height: getDeviceHight(context) * 0.03,
            ),
            CustomizedTextFields(
                hintText: "Phone Number",
                prefixWidget: Container(
                  width: 0,
                  height: 0,
                )),
            SizedBox(
              height: getDeviceHight(context) * 0.03,
            ),
            CustomizedTextFields(
                hintText: "Date of birth",
                prefixWidget: Container(
                  width: 0,
                  height: 0,
                )),
            SizedBox(
              height: getDeviceHight(context) * 0.03,
            ),
            CustomizedTextFields(
                hintText: "Gender",
                prefixWidget: Container(
                  width: 0,
                  height: 0,
                )),
            SizedBox(
              height: getDeviceHight(context) * 0.03,
            ),
            Center(
              child: CustomizedContainer(
                width: getDeviceWidth(context) * 0.45,
                color: purpleColor,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getDeviceWidth(context) * 0.05),
                  child: AutoSizeText(
                    'Create',
                    style: subtitle(context).copyWith(
                        color: Color(0xFFFFFFFF),
                        fontSize: getDeviceWidth(context) * 0.06,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: getDeviceHight(context) * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}

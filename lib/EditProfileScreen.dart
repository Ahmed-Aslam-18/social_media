import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:social_media_ui/Configs/ScreenUtils.dart';
import 'package:social_media_ui/Widgets/ShadowTextField.dart';

import 'Configs/Colors.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getDeviceWidth(context) * 0.025),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getDeviceHight(context) * 0.045,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.clear,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                  AutoSizeText(
                    'Edit Profile',
                    style: subtitle(context).copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: getDeviceWidth(context) * 0.055,
                    ),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.check,
                        color: blueColor,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                ],
              ),
              SizedBox(
                height: getDeviceHight(context) * 0.025,
              ),
              Center(
                child: CircleAvatar(
                  radius: getDeviceWidth(context) * 0.15,
                  backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/photos/handsome-man-picture-id907605102?k=6&m=907605102&s=612x612&w=0&h=Ix5b9FLOE8HzckUuvvA86F1OtMTZEOACwm3a_iTW6xk=',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: getDeviceHight(context) * 0.025),
                child: Center(
                  child: AutoSizeText(
                    'Change profile picture',
                    style: subtitle(context).copyWith(
                      color: greyColor,
                      fontSize: getDeviceWidth(context) * 0.045,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getDeviceHight(context) * 0.025,
              ),
              ShadowTextField(
                hintText: 'Name',
              ),
              SizedBox(
                height: getDeviceHight(context) * 0.02,
              ),
              ShadowTextField(
                hintText: 'Username',
              ),
              SizedBox(
                height: getDeviceHight(context) * 0.02,
              ),
              ShadowTextField(
                hintText: 'Type Your Bio Here',
              ),
              SizedBox(
                height: getDeviceHight(context) * 0.02,
              ),
              ShadowTextField(
                suffixWidget: Icon(
                  Icons.edit,
                  color: blueColor,
                ),
                hintText: 'Age',
              ),
              SizedBox(
                height: getDeviceHight(context) * 0.02,
              ),
              ShadowTextField(
                hintText: 'Country & City',
                suffixWidget: Icon(
                  Icons.edit,
                  color: blueColor,
                ),
              ),
              SizedBox(
                height: getDeviceHight(context) * 0.02,
              ),
              ShadowTextField(
                hintText: 'My interests',
                suffixWidget: Icon(
                  Icons.edit,
                  color: blueColor,
                ),
              ),
              SizedBox(
                height: getDeviceHight(context) * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

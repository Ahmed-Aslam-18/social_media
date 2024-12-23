import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:social_media_ui/Configs/Colors.dart';
import 'package:social_media_ui/Configs/ScreenUtils.dart';
import 'package:social_media_ui/Widgets/CustomizedContainer.dart';

class AcceptInvitationScreen extends StatefulWidget {
  @override
  _AcceptInvitationScreenState createState() => _AcceptInvitationScreenState();
}

class _AcceptInvitationScreenState extends State<AcceptInvitationScreen> {
  bool accepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Container(
          width: getDeviceWidth(context),
          child: accepted ? ConfirmWidget() : MainAcceptWidget(),
        ),
      ),
    );
  }

  Widget ConfirmWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              height: getDeviceHight(context) * 0.3,
              width: getDeviceWidth(context),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      'http://cdn28.us1.fansshare.com/photograph/australianmodels/australian-model-phoebe-tonkin-smile-high-resolution-wallpaper-for-desktop-background-download-phoebe-tonkin-images-free-wallpaper-1314016135.jpg',
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(getDeviceWidth(context) * 0.065),
                  bottomRight: Radius.circular(getDeviceWidth(context) * 0.065),
                ),
              ),
            ),
            Container(
              height: getDeviceHight(context) * 0.3,
              width: getDeviceWidth(context),
              decoration: BoxDecoration(
                color: purpleColor.withOpacity(0.4),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(getDeviceWidth(context) * 0.065),
                  bottomRight: Radius.circular(getDeviceWidth(context) * 0.065),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AutoSizeText(
                    'Confirmed',
                    style: subtitle(context).copyWith(
                        color: Colors.white,
                        fontSize: getDeviceWidth(context) * 0.075,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors.white,
                          width: getDeviceWidth(context) * 0.015),
                    ),
                    child: Icon(
                      Icons.check,
                      size: getDeviceWidth(context) * 0.15,
                      color: Color(0xFF37E288),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: getDeviceHight(context) * 0.08,
        ),
        Container(
          width: getDeviceWidth(context) * 0.45,
          height: getDeviceHight(context) * 0.2,
          child: Image.asset(
            'Assets/qr.png',
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          height: getDeviceHight(context) * 0.02,
        ),
        AutoSizeText(
          'Confirmation QR Code',
          style: subtitle(context).copyWith(
              color: greyColor, fontSize: getDeviceWidth(context) * 0.05),
        ),
        SizedBox(
          height: getDeviceHight(context) * 0.05,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: getDeviceWidth(context) * 0.04,
              backgroundImage: NetworkImage(
                'https://media.istockphoto.com/photos/handsome-man-picture-id907605102?k=6&m=907605102&s=612x612&w=0&h=Ix5b9FLOE8HzckUuvvA86F1OtMTZEOACwm3a_iTW6xk=',
              ),
            ),
            SizedBox(
              width: getDeviceWidth(context) * 0.03,
            ),
            AutoSizeText(
              '@John Larry',
              style: subtitle(context).copyWith(
                  color: greyColor, fontSize: getDeviceWidth(context) * 0.05),
            ),
          ],
        ),

        SizedBox(
          height: getDeviceHight(context) * 0.05,
        ),
        AutoSizeText(
          'New Year Party',
          style: subtitle(context).copyWith(
              color: greyColor, fontSize: getDeviceWidth(context) * 0.05),
        ),
        SizedBox(
          height: getDeviceHight(context) * 0.02,
        ),
        AutoSizeText(
          '8.00 pm',
          style: subtitle(context).copyWith(
              color: greyColor, fontSize: getDeviceWidth(context) * 0.055),
        ),
        AutoSizeText(
          'ABC Restaurant- CA',
          style: subtitle(context).copyWith(
              color: greyColor, fontSize: getDeviceWidth(context) * 0.055),
        ),
        SizedBox(
          height: getDeviceHight(context) * 0.03,
        ),
      ],
    );
  }

  Widget MainAcceptWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: getDeviceHight(context) * 0.05,
        ),
        CircleAvatar(
          radius: getDeviceWidth(context) * 0.12,
          backgroundImage: NetworkImage(
            'https://media.istockphoto.com/photos/handsome-man-picture-id907605102?k=6&m=907605102&s=612x612&w=0&h=Ix5b9FLOE8HzckUuvvA86F1OtMTZEOACwm3a_iTW6xk=',
          ),
        ),
        SizedBox(
          height: getDeviceHight(context) * 0.03,
        ),
        AutoSizeText(
          'John Larry',
          style: subtitle(context).copyWith(
              color: greyColor,
              fontWeight: FontWeight.bold,
              fontSize: getDeviceWidth(context) * 0.075),
        ),
        AutoSizeText(
          'Wants to invite you to',
          style: subtitle(context).copyWith(
              color: greyColor, fontSize: getDeviceWidth(context) * 0.055),
        ),
        SizedBox(
          height: getDeviceHight(context) * 0.02,
        ),
        Container(
          width: getDeviceWidth(context) * 0.9,
          height: getDeviceHight(context) * 0.25,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  'http://cdn28.us1.fansshare.com/photograph/australianmodels/australian-model-phoebe-tonkin-smile-high-resolution-wallpaper-for-desktop-background-download-phoebe-tonkin-images-free-wallpaper-1314016135.jpg',
                ),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.all(
              Radius.circular(getDeviceWidth(context) * 0.045),
            ),
          ),
        ),
        SizedBox(
          height: getDeviceHight(context) * 0.03,
        ),
        AutoSizeText(
          'ABC Restaurant- CA',
          style: subtitle(context).copyWith(
              color: greyColor,
              fontWeight: FontWeight.bold,
              fontSize: getDeviceWidth(context) * 0.075),
        ),
        AutoSizeText(
          'Fine-dining Restaurant',
          style: subtitle(context).copyWith(
              color: greyColor, fontSize: getDeviceWidth(context) * 0.055),
        ),
        SizedBox(
          height: getDeviceHight(context) * 0.03,
        ),
        AutoSizeText(
          '8.00 pm',
          style: subtitle(context).copyWith(
              color: greyColor, fontSize: getDeviceWidth(context) * 0.055),
        ),
        AutoSizeText(
          '01 January 2020',
          style: subtitle(context).copyWith(
              color: greyColor, fontSize: getDeviceWidth(context) * 0.055),
        ),
        SizedBox(
          height: getDeviceHight(context) * 0.03,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              setState(() {
                accepted = true;
              });
            });
          },
          child: CustomizedContainer(
            width: getDeviceWidth(context) * 0.45,
            color: purpleColor,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getDeviceWidth(context) * 0.05),
              child: AutoSizeText(
                'Accept',
                style: subtitle(context).copyWith(
                  color: Color(0xFFFFFFFF),
                  fontSize: getDeviceWidth(context) * 0.05,
                ),
              ),
            ),
          ),
        ),
        CustomizedContainer(
          width: getDeviceWidth(context) * 0.45,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getDeviceWidth(context) * 0.05),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: AutoSizeText(
                'Decline',
                style: subtitle(context).copyWith(
                  color: greyColor,
                  fontSize: getDeviceWidth(context) * 0.05,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

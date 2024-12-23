import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:social_media_ui/Configs/ScreenUtils.dart';

import 'Configs/Colors.dart';
import 'Widgets/CustomizedContainer.dart';

class AcceptIncomingUsers extends StatefulWidget {
  @override
  _AcceptIncomingUsersState createState() => _AcceptIncomingUsersState();
}

class _AcceptIncomingUsersState extends State<AcceptIncomingUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Container(
          width: getDeviceWidth(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: getDeviceHight(context) * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://media.istockphoto.com/photos/handsome-man-picture-id907605102?k=6&m=907605102&s=612x612&w=0&h=Ix5b9FLOE8HzckUuvvA86F1OtMTZEOACwm3a_iTW6xk=',
                      ),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.only(
                    bottomLeft:
                        Radius.circular(getDeviceWidth(context) * 0.085),
                    bottomRight:
                        Radius.circular(getDeviceWidth(context) * 0.085),
                  ),
                ),
              ),
              SizedBox(
                height: getDeviceHight(context) * 0.03,
              ),
              AutoSizeText(
                'Philip',
                style: subtitle(context).copyWith(
                    color: greyColor,
                    fontWeight: FontWeight.bold,
                    fontSize: getDeviceWidth(context) * 0.075),
              ),
              SizedBox(
                height: getDeviceHight(context) * 0.03,
              ),
              Container(
                width: getDeviceWidth(context) * 0.7,
                child: AutoSizeText(
                  '24, Male Johannesburg, Gauteng',
                  textAlign: TextAlign.center,
                  style: subtitle(context).copyWith(
                      color: greyColor,
                      fontSize: getDeviceWidth(context) * 0.055),
                ),
              ),
              SizedBox(
                height: getDeviceHight(context) * 0.05,
              ),
              AutoSizeText(
                'Wants to join your event',
                style: subtitle(context).copyWith(
                    color: greyColor,
                    fontWeight: FontWeight.bold,
                    fontSize: getDeviceWidth(context) * 0.075),
              ),
              SizedBox(
                height: getDeviceHight(context) * 0.08,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomizedContainer(
                    width: getDeviceWidth(context) * 0.4,
                    color: purpleColor,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getDeviceWidth(context) * 0.05),
                      child: AutoSizeText(
                        'Accept',
                        style: subtitle(context).copyWith(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFFFFFF),
                          fontSize: getDeviceWidth(context) * 0.05,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: getDeviceWidth(context) * 0.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(getDeviceWidth(context) * 0.095),
                        ),
                        border: Border.all(color: purpleColor, width: 2)),
                    child: Padding(
                      padding: EdgeInsets.all(getDeviceWidth(context) * 0.02),
                      child: Center(
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
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: getDeviceWidth(context) * 0.05,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

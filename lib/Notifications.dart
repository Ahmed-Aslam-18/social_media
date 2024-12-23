import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:social_media_ui/AcceptIncomingUsers.dart';
import 'package:social_media_ui/AcceptInvitationScreen.dart';
import 'package:social_media_ui/Widgets/CustomizedContainer.dart';
import 'package:social_media_ui/Widgets/TimelineScreen.dart';

import 'Configs/Colors.dart';
import 'Configs/ScreenUtils.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          TopContainer(
              context,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios_outlined,
                        size: getDeviceWidth(context) * 0.08),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    color: greyColor,
                  ),
                  AutoSizeText(
                    'Notifications & Messages',
                    style: subtitle(context).copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: getDeviceWidth(context) * 0.055),
                  ),
                  Container(
                    height: 0,
                    width: 0,
                  ),
                ],
              )),
          Container(
            height: getDeviceHight(context) * 0.12,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getDeviceWidth(context) * 0.025,
                  vertical: getDeviceHight(context) * 0.025),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: getDeviceWidth(context) * 0.45,
                    decoration: BoxDecoration(
                      color: purpleColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          spreadRadius: getDeviceHight(context) * 0.005,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        )
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(getDeviceWidth(context) * 0.085),
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding:
                            EdgeInsets.all(getDeviceWidth(context) * 0.025),
                        child: AutoSizeText(
                          'Notifications',
                          style: subtitle(context).copyWith(
                            color: Colors.white,
                            fontSize: getDeviceWidth(context) * 0.045,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: getDeviceWidth(context) * 0.45,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          spreadRadius: getDeviceHight(context) * 0.005,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        )
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(getDeviceWidth(context) * 0.085),
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding:
                            EdgeInsets.all(getDeviceWidth(context) * 0.025),
                        child: AutoSizeText(
                          'Messages',
                          style: subtitle(context).copyWith(
                            color: Color(0xFF707070),
                            fontSize: getDeviceWidth(context) * 0.045,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: getDeviceHight(context) * 0.68,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getDeviceWidth(context) * 0.015),
              child: ListView(
                shrinkWrap: true,
                children: [
                  NotificatonCard(),
                  NotificatonCard(),
                  NotificatonCard1(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget NotificatonCard() {
    return Card(
      elevation: 8,
      color: Theme.of(context).primaryColor,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(getDeviceWidth(context) * 0.055),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: getDeviceWidth(context) * 0.03,
            ),
            CircleAvatar(
              radius: getDeviceWidth(context) * 0.06,
              backgroundImage: NetworkImage(
                'https://media.istockphoto.com/photos/handsome-man-picture-id907605102?k=6&m=907605102&s=612x612&w=0&h=Ix5b9FLOE8HzckUuvvA86F1OtMTZEOACwm3a_iTW6xk=',
              ),
            ),
            SizedBox(
              width: getDeviceWidth(context) * 0.03,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: getDeviceWidth(context) * 0.7,
                  child: AutoSizeText(
                    'John Larry Invited to his event',
                    style: subtitle(context).copyWith(
                        color: greyColor,
                        fontWeight: FontWeight.bold,
                        fontSize: getDeviceWidth(context) * 0.045),
                  ),
                ),
                SizedBox(
                  height: getDeviceHight(context) * 0.01,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AcceptInvitationScreen(),
                      ),
                    );
                  },
                  child: AutoSizeText(
                    'View Details',
                    style: subtitle(context).copyWith(
                        decoration: TextDecoration.underline,
                        color: purpleColor,
                        fontSize: getDeviceWidth(context) * 0.045),
                  ),
                ),
                SizedBox(
                  height: getDeviceHight(context) * 0.01,
                ),
                Container(
                  width: getDeviceWidth(context) * 0.7,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: AutoSizeText(
                      'Today, 10.05am',
                      style: subtitle(context).copyWith(
                          color: greyColor,
                          fontSize: getDeviceWidth(context) * 0.04),
                    ),
                  ),
                ),
                SizedBox(
                  height: getDeviceHight(context) * 0.01,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget NotificatonCard1() {
    return Card(
      elevation: 8,
      color: Theme.of(context).primaryColor,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(getDeviceWidth(context) * 0.055),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: getDeviceWidth(context) * 0.03,
            ),
            CircleAvatar(
              radius: getDeviceWidth(context) * 0.06,
              backgroundImage: NetworkImage(
                'https://media.istockphoto.com/photos/handsome-man-picture-id907605102?k=6&m=907605102&s=612x612&w=0&h=Ix5b9FLOE8HzckUuvvA86F1OtMTZEOACwm3a_iTW6xk=',
              ),
            ),
            SizedBox(
              width: getDeviceWidth(context) * 0.03,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: getDeviceWidth(context) * 0.7,
                  child: AutoSizeText(
                    'John Larry Wants to join your event',
                    style: subtitle(context).copyWith(
                        color: greyColor,
                        fontWeight: FontWeight.bold,
                        fontSize: getDeviceWidth(context) * 0.045),
                  ),
                ),
                SizedBox(
                  height: getDeviceHight(context) * 0.01,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AcceptIncomingUsers(),
                      ),
                    );
                  },
                  child: AutoSizeText(
                    'View Details',
                    style: subtitle(context).copyWith(
                        decoration: TextDecoration.underline,
                        color: purpleColor,
                        fontSize: getDeviceWidth(context) * 0.045),
                  ),
                ),
                SizedBox(
                  height: getDeviceHight(context) * 0.01,
                ),
                Container(
                  width: getDeviceWidth(context) * 0.7,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: AutoSizeText(
                      'Today, 10.05am',
                      style: subtitle(context).copyWith(
                          color: greyColor,
                          fontSize: getDeviceWidth(context) * 0.04),
                    ),
                  ),
                ),
                SizedBox(
                  height: getDeviceHight(context) * 0.01,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

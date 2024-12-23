import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:social_media_ui/BuyCreditsScreen.dart';
import 'package:social_media_ui/Configs/Colors.dart';
import 'package:social_media_ui/Configs/ScreenUtils.dart';
import 'package:social_media_ui/EditProfileScreen.dart';
import 'package:social_media_ui/Widgets/CustomizedContainer.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFF121318),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: getDeviceWidth(context) * 0.055,
                top: getDeviceWidth(context) * 0.035,
                bottom: getDeviceWidth(context) * 0.035,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AutoSizeText(
                    'John Larry',
                    style: subtitle(context).copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: getDeviceWidth(context) * 0.065,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: getDeviceWidth(context) * 0.035,
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => EditProfileScreen()),
                        );
                      },
                    child: AutoSizeText(
                      'Edit Profile',
                      style: subtitle(context).copyWith(
                        color: greyColor,
                        fontSize: getDeviceWidth(context) * 0.05,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getDeviceHight(context) * 0.035,
                  ),
                  AutoSizeText(
                    'Privacy Settings',
                    style: subtitle(context).copyWith(
                      color: greyColor,
                      fontWeight: FontWeight.w500,
                      fontSize: getDeviceWidth(context) * 0.05,
                    ),
                  ),
                  // SizedBox(
                  //   height: getDeviceHight(context) * 0.075,
                  // ),
                  // GestureDetector(
                  //   onTap: () {
                  //     Navigator.of(context).push(
                  //       MaterialPageRoute(
                  //           builder: (context) => BuyCreditsScreen()),
                  //     );
                  //   },
                  //   child: CustomizedContainer(
                  //     color: purpleColor,
                  //     child: Padding(
                  //       padding: EdgeInsets.symmetric(
                  //           horizontal: getDeviceWidth(context) * 0.05),
                  //       child: AutoSizeText(
                  //         'Buy Credits',
                  //         style: subtitle(context).copyWith(
                  //             color: Color(0xFFFFFFFF),
                  //             fontSize: getDeviceWidth(context) * 0.05,
                  //             fontWeight: FontWeight.bold),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: getDeviceHight(context) * 0.075,
                  ),
                  AutoSizeText(
                    'Switch to Light theme',
                    style: subtitle(context).copyWith(
                      color: greyColor,
                      fontWeight: FontWeight.w500,
                      fontSize: getDeviceWidth(context) * 0.05,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

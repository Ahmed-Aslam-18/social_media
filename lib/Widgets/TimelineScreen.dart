import 'package:flutter/material.dart';
import 'package:social_media_ui/Configs/Colors.dart';
import 'package:social_media_ui/Configs/ScreenUtils.dart';
import 'package:social_media_ui/Widgets/PostWidget.dart';

class TimelineScreen extends StatefulWidget {
  @override
  _TimelineScreenState createState() => _TimelineScreenState();
}

class _TimelineScreenState extends State<TimelineScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getDeviceHight(context) * 0.92,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TopContainer(
                context,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: IconButton(
                        icon: Icon(
                          Icons.camera_alt_outlined,
                          size: getDeviceWidth(context) * 0.08,
                        ),
                        onPressed: () {},
                        color: purpleColor,
                      ),
                    ),
                    Center(
                      child: Image.asset(
                        'Assets/evvovvwhite.png',
                        height: getDeviceHight(context) * 0.1,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: IconButton(
                        icon: Icon(Icons.share,
                            size: getDeviceWidth(context) * 0.08),
                        onPressed: () {},
                        color: purpleColor,
                      ),
                    )
                  ],
                )),
            Container(
              height: getDeviceHight(context)*0.8,
              child: Padding(
                padding:  EdgeInsets.only(bottom: getDeviceHight(context)*0.035),
                child: ListView(
                  children: [
                    PostWidget(
                      imgUrl:
                          'https://c4.wallpaperflare.com/wallpaper/729/610/482/amanda-cerny-4k-high-resolution-mac-wallpaper-preview.jpg',
                      name: 'Emely Williams',
                      profession: 'Modler',
                      postUrl:
                      'https://c4.wallpaperflare.com/wallpaper/703/318/363/sherlock-high-resolution-wallpaper-preview.jpg',
                    ),
                    PostWidget(
                      imgUrl:
                          'https://media.istockphoto.com/photos/handsome-man-picture-id907605102?k=6&m=907605102&s=612x612&w=0&h=Ix5b9FLOE8HzckUuvvA86F1OtMTZEOACwm3a_iTW6xk=',
                      name: 'Jane_23',
                      profession: 'Modler',
                      postUrl:
                          'https://c4.wallpaperflare.com/wallpaper/703/318/363/sherlock-high-resolution-wallpaper-preview.jpg',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget TopContainer(BuildContext context, Widget child) {
  return Container(
    decoration: BoxDecoration(
      color: Theme.of(context).primaryColor,
      boxShadow: [
        BoxShadow(
          color: Colors.black54,
          spreadRadius: getDeviceHight(context) * 0.005,
          blurRadius: 7,
          offset: Offset(0, -3),
        )
      ],
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(getDeviceWidth(context) * 0.085),
        bottomRight: Radius.circular(getDeviceWidth(context) * 0.085),
      ),
    ),
    child: Padding(
      padding: EdgeInsets.only(
          left: getDeviceWidth(context) * 0.035,
          right: getDeviceWidth(context) * 0.035,
          top: getDeviceHight(context) * 0.05,
          bottom: getDeviceHight(context) * 0.02),
      child: child,
    ),
  );
}

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:social_media_ui/Configs/Colors.dart';
import 'package:social_media_ui/Configs/ScreenUtils.dart';
import 'package:social_media_ui/Widgets/SearchWidget.dart';
import 'package:social_media_ui/Widgets/TimelineScreen.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool applyFilter = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getDeviceHight(context) * 0.92,
      child: SingleChildScrollView(
        child: Column(
          children: [
            TopContainer(
                context,
                applyFilter
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back_ios_outlined,
                                size: getDeviceWidth(context) * 0.08),
                            onPressed: () {
                              setState(() {
                                applyFilter = false;
                              });
                            },
                            color: greyColor,
                          ),
                          AutoSizeText(
                            'Settings',
                            style: subtitle(context).copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: getDeviceWidth(context) * 0.055),
                          ),
                          IconButton(
                            icon: Icon(Icons.filter_list,
                                size: getDeviceWidth(context) * 0.08),
                            onPressed: () {},
                            color: Color(0xFF656A7B),
                          )
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(),
                          AutoSizeText(
                            'John Larry',
                            style: subtitle(context).copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: getDeviceWidth(context) * 0.055),
                          ),
                          IconButton(
                            icon: Icon(Icons.filter_list,
                                size: getDeviceWidth(context) * 0.08),
                            onPressed: () {
                              setState(() {
                                applyFilter = true;
                              });
                            },
                            color: Color(0xFF236BFD),
                          )
                        ],
                      )),
            Container(
              height: getDeviceHight(context) * 0.8,
              child: Padding(
                padding: EdgeInsets.all(getDeviceWidth(context) * 0.025),
                child: applyFilter ? Fillters() : SearchResult(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  double distance = 3;
  double ageRange = 25;

  Widget Fillters() {
    return ListView(
      shrinkWrap: true,
      children: [
        AutoSizeText(
          'Discovery Settings',
          style: subtitle(context).copyWith(
              color: Color(0xFF707070),
              fontWeight: FontWeight.w700,
              fontSize: getDeviceWidth(context) * 0.055),
        ),
        Card(
          elevation: 5,
          color: Theme.of(context).primaryColor,
          child: Padding(
            padding:
                EdgeInsets.symmetric(vertical: getDeviceHight(context) * 0.025),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AutoSizeText(
                  'Location',
                  style: subtitle(context).copyWith(
                      color: Color(0xFF707070),
                      fontSize: getDeviceWidth(context) * 0.055),
                ),
                AutoSizeText(
                  'Canada',
                  style: subtitle(context).copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: getDeviceWidth(context) * 0.055),
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 5,
          color: Theme.of(context).primaryColor,
          child: Padding(
            padding:
                EdgeInsets.symmetric(vertical: getDeviceHight(context) * 0.025),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText(
                    'Maximum Distance',
                    style: subtitle(context).copyWith(
                        color: Color(0xFF707070),
                        fontSize: getDeviceWidth(context) * 0.055),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(right: getDeviceWidth(context) * 0.05),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: AutoSizeText(
                      '${distance.truncate()} km',
                      style: subtitle(context).copyWith(
                          color: Color(0xFF707070),
                          fontSize: getDeviceWidth(context) * 0.035),
                    ),
                  ),
                ),
                Slider.adaptive(
                    min: 0,
                    max: 20,
                    activeColor: Color(0xFF707070),
                    inactiveColor: Color(0xFF707070),
                    label: '$distance',
                    value: distance,
                    onChanged: (val) {
                      setState(() {
                        distance = val;
                      });
                    })
              ],
            ),
          ),
        ),
        Card(
          elevation: 5,
          color: Theme.of(context).primaryColor,
          child: Padding(
            padding:
                EdgeInsets.symmetric(vertical: getDeviceHight(context) * 0.025),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AutoSizeText(
                  'Gender',
                  style: subtitle(context).copyWith(
                      color: Color(0xFF707070),
                      fontSize: getDeviceWidth(context) * 0.055),
                ),
                AutoSizeText(
                  'Male',
                  style: subtitle(context).copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: getDeviceWidth(context) * 0.055),
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 5,
          color: Theme.of(context).primaryColor,
          child: Padding(
            padding:
                EdgeInsets.symmetric(vertical: getDeviceHight(context) * 0.025),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText(
                    'Age Range',
                    style: subtitle(context).copyWith(
                        color:greyColor,
                        fontSize: getDeviceWidth(context) * 0.055),
                  ),
                ),
                Slider.adaptive(
                    min: 18,
                    max: 100,
                    activeColor: Color(0xFF707070),
                    inactiveColor: Color(0xFF707070),
                    label: '$ageRange',
                    value: ageRange,
                    onChanged: (val) {
                      setState(() {
                        ageRange = val;
                      });
                    }),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getDeviceWidth(context) * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AutoSizeText(
                        '18',
                        style: subtitle(context).copyWith(
                            color: Color(0xFF707070),
                            fontSize: getDeviceWidth(context) * 0.035),
                      ),
                      AutoSizeText(
                        '100',
                        style: subtitle(context).copyWith(
                            color: Color(0xFF707070),
                            fontSize: getDeviceWidth(context) * 0.035),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getDeviceWidth(context) * 0.05,
              vertical: getDeviceHight(context) * 0.025),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AutoSizeText(
                'Online Users',
                style: subtitle(context).copyWith(
                    color: Color(0xFF707070),
                    fontSize: getDeviceWidth(context) * 0.05),
              ),
              Switch.adaptive(
                value: true,
                onChanged: (val) {},
                activeColor: purpleColor,
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget SearchResult() {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: getDeviceWidth(context) * 0.025,
          crossAxisSpacing: getDeviceWidth(context) * 0.025,
          childAspectRatio: 0.5),
      children: [
        SearchWidget(
          imgUrl:
          'https://media.istockphoto.com/photos/handsome-man-picture-id907605102?k=6&m=907605102&s=612x612&w=0&h=Ix5b9FLOE8HzckUuvvA86F1OtMTZEOACwm3a_iTW6xk=',
          name: 'Mike J, 21',
          status: 'online',
        ),
        SearchWidget(
          imgUrl:
          'https://c4.wallpaperflare.com/wallpaper/703/318/363/sherlock-high-resolution-wallpaper-preview.jpg',
          name: 'Mike J, 21',
          status: 'online',
        ),
        SearchWidget(
          imgUrl:
          'https://c4.wallpaperflare.com/wallpaper/703/318/363/sherlock-high-resolution-wallpaper-preview.jpg',
          name: 'Mike J, 21',
          status: 'online',
        ),
        SearchWidget(
          imgUrl:
          'https://c4.wallpaperflare.com/wallpaper/703/318/363/sherlock-high-resolution-wallpaper-preview.jpg',
          name: 'Mike J, 21',
          status: 'online',
        ),
        SearchWidget(
          imgUrl:
          'https://c4.wallpaperflare.com/wallpaper/703/318/363/sherlock-high-resolution-wallpaper-preview.jpg',
          name: 'Mike J, 21',
          status: 'online',
        ),
      ],
    );
  }
}

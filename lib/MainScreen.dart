import 'package:flutter/material.dart';
import 'package:social_media_ui/Configs/Colors.dart';
import 'package:social_media_ui/Configs/ScreenUtils.dart';
import 'package:social_media_ui/Widgets/CustomDrawer.dart';
import 'package:social_media_ui/Widgets/ExploreScreen.dart';
import 'package:social_media_ui/Widgets/NewEventScreen.dart';
import 'package:social_media_ui/Widgets/ProfilePage.dart';
import 'package:social_media_ui/Widgets/SearchScreen.dart';
import 'package:social_media_ui/Widgets/TimelineScreen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: CustomDrawer(),
      body: Container(
        height: getDeviceHight(context) * 0.92,
        child: currentIndex == 4
            ? ProfilePage()
            : currentIndex == 0
                ? TimelineScreen()
                : currentIndex == 1
                    ? SearchScreen()
                    : currentIndex == 2
                        ? NewEventScreen()
                        : ExploreScreen(),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          onTap: (val) {
            setState(() {
              currentIndex = val;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedIconTheme: IconThemeData(color: purpleColor),
          unselectedIconTheme: IconThemeData(color: greyColor),
          currentIndex: currentIndex,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(
                  Icons.home_filled,
                ),
                label: '',),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(
                  Icons.search,
                ),
                label: ''),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(
                  Icons.add_box_outlined,
                ),
                label: ''),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(
                  Icons.shuffle,
                ),
                label: ''),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(
                  Icons.person_pin,
                ),
                label: ''),
          ]),
    );
  }
}

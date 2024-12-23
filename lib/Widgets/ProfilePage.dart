import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:social_media_ui/Configs/Colors.dart';
import 'package:social_media_ui/Configs/ScreenUtils.dart';
import 'package:social_media_ui/Notifications.dart';
import 'package:social_media_ui/Widgets/ShadowTextField.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int setIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getDeviceHight(context) * 0.9,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: getDeviceHight(context) * 0.45,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://www.europeanceo.com/wp-content/uploads/2019/09/Private-islands.jpg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black54.withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: getDeviceWidth(context),
                      color: Colors.black87.withOpacity(0.3),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: getDeviceHight(context) * 0.015),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: getDeviceWidth(context) * 0.05,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText(
                                  'POSTS',
                                  style: subtitle(context).copyWith(
                                    color: greyColor,
                                    fontSize: getDeviceWidth(context) * 0.04,
                                  ),
                                ),
                                SizedBox(
                                  height: getDeviceHight(context) * 0.0035,
                                ),
                                AutoSizeText(
                                  '52',
                                  style: subtitle(context).copyWith(
                                    color: Colors.white,
                                    fontSize: getDeviceWidth(context) * 0.04,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: getDeviceWidth(context) * 0.075,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText(
                                  'FRIENDS',
                                  style: subtitle(context).copyWith(
                                    color: greyColor,
                                    fontSize: getDeviceWidth(context) * 0.04,
                                  ),
                                ),
                                SizedBox(
                                  height: getDeviceHight(context) * 0.0035,
                                ),
                                AutoSizeText(
                                  '15000',
                                  style: subtitle(context).copyWith(
                                    color: Colors.white,
                                    fontSize: getDeviceWidth(context) * 0.04,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: getDeviceHight(context) * 0.04,
                    child: Center(
                      child: Container(
                        width: getDeviceWidth(context),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.notifications,
                                size: getDeviceWidth(context) * 0.08,
                              ),
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => Notifications(),
                                  ),
                                );
                              },
                              color: Colors.white,
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.settings,
                                size: getDeviceWidth(context) * 0.08,
                              ),
                              onPressed: () {
                                Scaffold.of(context).openEndDrawer();
                              },
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: getDeviceWidth(context) * 0.15,
                        backgroundImage: NetworkImage(
                          'https://media.istockphoto.com/photos/handsome-man-picture-id907605102?k=6&m=907605102&s=612x612&w=0&h=Ix5b9FLOE8HzckUuvvA86F1OtMTZEOACwm3a_iTW6xk=',
                        ),
                      ),
                      SizedBox(
                        height: getDeviceHight(context) * 0.015,
                      ),
                      AutoSizeText(
                        'John Larry',
                        style: subtitle(context).copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: getDeviceWidth(context) * 0.045,
                        ),
                      ),
                      SizedBox(
                        height: getDeviceHight(context) * 0.015,
                      ),
                      AutoSizeText(
                        'Musician',
                        style: subtitle(context).copyWith(
                          color: greyColor,
                          fontSize: getDeviceWidth(context) * 0.04,
                        ),
                      ),
                      SizedBox(
                        height: getDeviceHight(context) * 0.095,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              color: Theme.of(context).primaryColor,
              elevation: 5,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // IconButton(
                    //   icon: Icon(
                    //     Icons.person,
                    //   ),
                    //   onPressed: () {
                    //     setState(() {
                    //       setIndex = 0;
                    //     });
                    //   },
                    //   color: setIndex == 0 ? purpleColor : greyColor,
                    // ),
                    IconButton(
                      icon: Icon(
                        Icons.add_photo_alternate_outlined,
                      ),
                      onPressed: () {
                        setState(() {
                          setIndex = 0;
                        });
                      },
                      color: setIndex == 1 ? purpleColor : greyColor,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.play_circle_outline,
                      ),
                      onPressed: () {
                        setState(() {
                          setIndex = 1;
                        });
                      },
                      color: setIndex == 2 ? purpleColor : greyColor,
                    ),
                  ],
                ),
              ),
            ),
            photosSection(),
          ],
        ),
      ),
    );
  }

  Widget editProfile() {
    return Container(
      width: getDeviceWidth(context) * 0.9,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: getDeviceHight(context) * 0.015,
          ),
          ShadowTextField(
            hintText: 'Type Your Bio Here',
          ),
          SizedBox(
            height: getDeviceHight(context) * 0.01,
          ),
          ShadowTextField(
            suffixWidget: Icon(
              Icons.edit,
              color: blueColor,
            ),
            hintText: 'Age',
          ),
          SizedBox(
            height: getDeviceHight(context) * 0.01,
          ),
          ShadowTextField(
            hintText: 'Country & City',
            suffixWidget: Icon(
              Icons.edit,
              color: blueColor,
            ),
          ),
          SizedBox(
            height: getDeviceHight(context) * 0.01,
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
    );
  }

  ScrollController scrollController = ScrollController();

  Widget photosSection() {
    return SingleChildScrollView(
      controller: scrollController,
      child: Container(
        width: getDeviceWidth(context) * 0.9,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getDeviceHight(context) * 0.015,
            ),
            AutoSizeText(
              'In the mood for',
              style: subtitle(context).copyWith(
                color: greyColor,
                fontSize: getDeviceWidth(context) * 0.055,
              ),
            ),
            SizedBox(
              height: getDeviceHight(context) * 0.015,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.add_circle_outline_outlined,
                    color: purpleColor,
                    size: getDeviceWidth(context) * 0.1,
                  ),
                  onPressed: () {},
                ),
                AutoSizeText(
                  'Add Mode',
                  style: subtitle(context).copyWith(
                    color: greyColor,
                    fontSize: getDeviceWidth(context) * 0.035,
                  ),
                ),
              ],
            ),
            Container(
              height: getDeviceHight(context) * 0.4,
              child: GridView(
                controller: scrollController,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: getDeviceWidth(context) * 0.025,
                    crossAxisSpacing: getDeviceWidth(context) * 0.025,
                    childAspectRatio: 1),
                children: [
                  ProfileImagesContainer(
                      url:
                      'https://bstatic.com/xdata/images/xphoto/1182x887/82877075.jpg?k=db9e00135b7b8f038aad88a7676235667ca249a5eed997a499677812fa332833&o=?size=S',
                  ),
                  ProfileImagesContainer(
                    url:
                        'https://bstatic.com/xdata/images/xphoto/1182x887/82877075.jpg?k=db9e00135b7b8f038aad88a7676235667ca249a5eed997a499677812fa332833&o=?size=S',
                  ),
                  ProfileImagesContainer(
                      url:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Escursionismo_sulle_Alpi.jpg/310px-Escursionismo_sulle_Alpi.jpg',
                  ),
                  ProfileImagesContainer(
                    url:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Escursionismo_sulle_Alpi.jpg/310px-Escursionismo_sulle_Alpi.jpg',
                  ),
                  ProfileImagesContainer(
                      url:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Escursionismo_sulle_Alpi.jpg/310px-Escursionismo_sulle_Alpi.jpg',
                  ),
                  ProfileImagesContainer(
                    url:
                    'https://bstatic.com/xdata/images/xphoto/1182x887/82877075.jpg?k=db9e00135b7b8f038aad88a7676235667ca249a5eed997a499677812fa332833&o=?size=S',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget ProfileImagesContainer({String? url}) {
    return Container(
      width: getDeviceWidth(context) * 0.25,
      height: getDeviceWidth(context) * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(getDeviceWidth(context) * 0.055),
        ),
        image: DecorationImage(
          image: NetworkImage('$url'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

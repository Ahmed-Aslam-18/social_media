import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:social_media_ui/Configs/ScreenUtils.dart';

import 'Configs/Colors.dart';
import 'InviteFriendToEvent.dart';
import 'Widgets/CustomizedContainer.dart';

class UserDetailPage extends StatefulWidget {
  @override
  _UserDetailPageState createState() => _UserDetailPageState();
}

class _UserDetailPageState extends State<UserDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        height: getDeviceHight(context),
        child: Stack(
          children: [
            Container(
              height: getDeviceHight(context) * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      'https://c4.wallpaperflare.com/wallpaper/703/318/363/sherlock-high-resolution-wallpaper-preview.jpg',
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.6,
              minChildSize: 0.6,
              maxChildSize: 0.8,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  height: getDeviceHight(context) * 0.7,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(getDeviceWidth(context) * 0.065),
                      topRight:
                          Radius.circular(getDeviceWidth(context) * 0.065),
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: getDeviceHight(context) * 0.025),
                    child: ListView(
                      controller: scrollController,
                      children: [
                        Card(
                          color: Theme.of(context).primaryColor,
                          elevation: 5,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                    radius: getDeviceWidth(context) * 0.08,
                                    backgroundImage: NetworkImage(
                                      'https://c4.wallpaperflare.com/wallpaper/703/318/363/sherlock-high-resolution-wallpaper-preview.jpg',
                                    ),
                                  ),
                                  SizedBox(
                                    width: getDeviceWidth(context) * 0.025,
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      AutoSizeText(
                                        'POSTS',
                                        style: subtitle(context).copyWith(
                                          color: greyColor,
                                          fontSize:
                                              getDeviceWidth(context) * 0.05,
                                        ),
                                      ),
                                      SizedBox(
                                        height: getDeviceHight(context) * 0.015,
                                      ),
                                      AutoSizeText(
                                        '52',
                                        style: subtitle(context).copyWith(
                                            color: Colors.white,
                                            fontSize:
                                                getDeviceWidth(context) * 0.05,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      AutoSizeText(
                                        'FRIENDS',
                                        style: subtitle(context).copyWith(
                                          color: greyColor,
                                          fontSize:
                                              getDeviceWidth(context) * 0.05,
                                        ),
                                      ),
                                      SizedBox(
                                        height: getDeviceHight(context) * 0.015,
                                      ),
                                      AutoSizeText(
                                        '15000',
                                        style: subtitle(context).copyWith(
                                            color: Colors.white,
                                            fontSize:
                                                getDeviceWidth(context) * 0.05,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: getDeviceHight(context)*0.015,),

                            ],
                          ),
                        ),
                        SizedBox(height: getDeviceHight(context)*0.015,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              width: getDeviceWidth(context) * 0.035,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFF00B14F),
                                  shape: BoxShape.circle),
                              width: getDeviceWidth(context) * 0.015,
                              height: getDeviceWidth(context) * 0.015,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  ' Miranda Kerr',
                                  style: subtitle(context).copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: getDeviceWidth(context) * 0.065,
                                  ),
                                ),
                                AutoSizeText(
                                  'Musician',
                                  style: subtitle(context).copyWith(
                                    color: greyColor,
                                    fontSize: getDeviceWidth(context) * 0.045,
                                  ),
                                ),
                                AutoSizeText(
                                  '20 Miles Away',
                                  style: subtitle(context).copyWith(
                                    color: greyColor,
                                    fontSize: getDeviceWidth(context) * 0.045,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: getDeviceWidth(context) * 0.055,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: getDeviceHight(context) * 0.015),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomizedContainer(
                                width: getDeviceWidth(context) * 0.35,
                                color: purpleColor,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          getDeviceWidth(context) * 0.015),
                                  child: AutoSizeText(
                                    'Add Friend',
                                    style: subtitle(context).copyWith(
                                      color: Color(0xFFFFFFFF),
                                      fontSize: getDeviceWidth(context) * 0.045,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: getDeviceHight(context) * 0.0035,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          InviteFriendToEvent(),
                                    ),
                                  );
                                },
                                child: CustomizedContainer(
                                  width: getDeviceWidth(context) * 0.35,
                                  color: purpleColor,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            getDeviceWidth(context) * 0.015),
                                    child: AutoSizeText(
                                      'Invite',
                                      style: subtitle(context).copyWith(
                                        color: Color(0xFFFFFFFF),
                                        fontSize:
                                            getDeviceWidth(context) * 0.045,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: getDeviceWidth(context) * 0.035,
                              top: getDeviceHight(context) * 0.015),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  MoodWidget(
                                      url:
                                      'https://c4.wallpaperflare.com/wallpaper/703/318/363/sherlock-high-resolution-wallpaper-preview.jpg',
                                      title: 'Lunch'),
                                  MoodWidget(
                                      url:
                                          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Escursionismo_sulle_Alpi.jpg/310px-Escursionismo_sulle_Alpi.jpg',
                                      title: 'Hiking'),
                                  MoodWidget(
                                      url:
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStyY3Xrb679HEIZm7R1uyW04Dy-lu_BmOnWA&usqp=CAU',
                                      title: 'Modeling'),
                                ],
                              ),
                              SizedBox(
                                height: getDeviceHight(context) * 0.015,
                              ),
                              AutoSizeText(
                                'Photos',
                                style: subtitle(context).copyWith(
                                  color: greyColor,
                                  fontSize: getDeviceWidth(context) * 0.055,
                                ),
                              ),
                              SizedBox(
                                height: getDeviceHight(context) * 0.015,
                              ),
                              Container(
                                height: getDeviceHight(context) * 0.5,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical:
                                          getDeviceHight(context) * 0.025),
                                  child: GridView(
                                    controller: scrollController,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3,
                                            mainAxisSpacing:
                                                getDeviceWidth(context) * 0.025,
                                            crossAxisSpacing:
                                                getDeviceWidth(context) * 0.025,
                                            childAspectRatio: 1),
                                    children: [
                                      UserImagesContainer(
                                          url:
                                          'https://bstatic.com/xdata/images/xphoto/1182x887/82877075.jpg?k=db9e00135b7b8f038aad88a7676235667ca249a5eed997a499677812fa332833&o=?size=S',
                                      ),
                                      UserImagesContainer(
                                        url:
                                            'https://bstatic.com/xdata/images/xphoto/1182x887/82877075.jpg?k=db9e00135b7b8f038aad88a7676235667ca249a5eed997a499677812fa332833&o=?size=S',
                                      ),
                                      UserImagesContainer(
                                          url:
                                          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Escursionismo_sulle_Alpi.jpg/310px-Escursionismo_sulle_Alpi.jpg',
                                      ),
                                      UserImagesContainer(
                                        url:
                                            'https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Escursionismo_sulle_Alpi.jpg/310px-Escursionismo_sulle_Alpi.jpg',
                                      ),
                                      UserImagesContainer(
                                        url:
                                            'https://specials-images.forbesimg.com/imageserve/5f1b45eac1b052b749af079c/960x0.jpg?fit=scale',
                                      ),
                                      UserImagesContainer(
                                        url:
                                            'https://bstatic.com/xdata/images/xphoto/1182x887/82877075.jpg?k=db9e00135b7b8f038aad88a7676235667ca249a5eed997a499677812fa332833&o=?size=S',
                                      ),
                                      UserImagesContainer(
                                          url:
                                              'https://www.medlife.com/blog/wp-content/uploads/2020/07/Jogging.jpg'),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: getDeviceHight(context) * 0.015,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget UserImagesContainer({String? url}) {
    return Container(
      width: getDeviceWidth(context) * 0.25,
      height: getDeviceHight(context) * 0.35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(getDeviceWidth(context) * 0.055),
        ),
        image: DecorationImage(
          image: NetworkImage('$url'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget MoodWidget({String? url, String? title}) {
    return Padding(
      padding: EdgeInsets.only(right: getDeviceWidth(context) * 0.035),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(blurRadius: 8, color: Colors.black, spreadRadius: 4)
              ],
            ),
            child: CircleAvatar(
              radius: getDeviceWidth(context) * 0.06,
              backgroundImage: NetworkImage(
                url??                                          'https://i0.wp.com/www.eatthis.com/wp-content/uploads/2020/04/meal-prep.jpg?fit=1200%2C879&ssl=1',
              ),
            ),
          ),
          SizedBox(
            height: getDeviceHight(context) * 0.015,
          ),
          AutoSizeText(
            '$title',
            style: subtitle(context).copyWith(
              color: Color(0xFF656A7B),
              fontSize: getDeviceWidth(context) * 0.035,
            ),
          ),
        ],
      ),
    );
  }
}

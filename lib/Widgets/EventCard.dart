import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:social_media_ui/Configs/Colors.dart';
import 'package:social_media_ui/Configs/ScreenUtils.dart';
import 'package:social_media_ui/Widgets/CustomizedContainer.dart';

class EventCard extends StatelessWidget {
  String? title;
  String? imgUrl;
  String? type;
  String? date;
  String? location;

  EventCard({this.title, this.imgUrl, this.type, this.date, this.location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: getDeviceWidth(context)*0.035),
      child: Card(
        elevation: 5,
        color: Theme.of(context).primaryColor,
        child: Container(
          width: getDeviceWidth(context) * 0.9,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(getDeviceWidth(context) * 0.045),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Container(
                    height: getDeviceHight(context) * 0.15,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(imgUrl!), fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(getDeviceWidth(context) * 0.045),
                        topRight:
                            Radius.circular(getDeviceWidth(context) * 0.045),
                      ),
                    ),
                  ),
                  Container(
                    height: getDeviceHight(context) * 0.15,
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(getDeviceWidth(context) * 0.045),
                        topRight:
                            Radius.circular(getDeviceWidth(context) * 0.045),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                            bottom: getDeviceHight(context) * 0.015),
                        child: AutoSizeText(
                          '$title',
                          style: subtitle(context).copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: getDeviceWidth(context) * 0.055),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: getDeviceHight(context) * 0.015,
                ),
                child: InfoRow(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget InfoRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: getDeviceWidth(context) * 0.6,
              child: Row(
                children: [
                  Icon(
                    Icons.album_outlined,
                    color: purpleColor,
                  ),
                  SizedBox(
                    width: getDeviceWidth(context) * 0.015,
                  ),
                  AutoSizeText(
                    '$type',
                    overflow: TextOverflow.ellipsis,
                    style: subtitle(context).copyWith(
                        color: greyColor,
                        fontSize: getDeviceWidth(context) * 0.035),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getDeviceHight(context) * 0.01,
            ),
            Container(
              width: getDeviceWidth(context) * 0.6,
              child: Row(
                children: [
                  Icon(
                    Icons.calendar_today,
                    color: purpleColor,
                  ),
                  SizedBox(
                    width: getDeviceWidth(context) * 0.015,
                  ),
                  AutoSizeText(
                    '$date',
                    overflow: TextOverflow.ellipsis,
                    style: subtitle(context).copyWith(
                        color: greyColor,
                        fontSize: getDeviceWidth(context) * 0.035),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getDeviceHight(context) * 0.01,
            ),
            Container(
              width: getDeviceWidth(context) * 0.6,
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: purpleColor,
                  ),
                  SizedBox(
                    width: getDeviceWidth(context) * 0.015,
                  ),
                  AutoSizeText(
                    '$location',
                    overflow: TextOverflow.ellipsis,
                    style: subtitle(context).copyWith(
                        color: greyColor,
                        fontSize: getDeviceWidth(context) * 0.035),
                  ),
                  SizedBox(
                    height: getDeviceHight(context) * 0.01,
                  ),
                ],
              ),
            ),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: getDeviceWidth(context) * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(getDeviceWidth(context) * 0.095),
                ),
                border: Border.all(color: Colors.white.withOpacity(0.3)),
              ),
              child: Padding(
                padding: EdgeInsets.all(getDeviceWidth(context) * 0.02),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getDeviceWidth(context) * 0.025),
                    child: AutoSizeText(
                      'View',
                      style: subtitle(context).copyWith(
                        color: Color(0xFFFFFFFF),
                        fontSize: getDeviceWidth(context) * 0.04,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: getDeviceHight(context) * 0.015,
            ),
            CustomizedContainer(
              width: getDeviceWidth(context) * 0.3,
              color: purpleColor,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getDeviceWidth(context) * 0.025),
                child: AutoSizeText(
                  'Join',
                  style: subtitle(context).copyWith(
                    color: Color(0xFFFFFFFF),
                    fontSize: getDeviceWidth(context) * 0.04,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

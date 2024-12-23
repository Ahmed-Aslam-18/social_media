import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:social_media_ui/Configs/ScreenUtils.dart';
import 'package:social_media_ui/UserDetailPage.dart';

class SearchWidget extends StatelessWidget {
  String? imgUrl;
  String? name;
  String? status;

  SearchWidget({this.imgUrl, this.name, this.status});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => UserDetailPage(),
          ),
        );
      },
      child: Container(
        width: getDeviceWidth(context) * 0.45,
        decoration: BoxDecoration(
          color: Color(0xFF121318),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(getDeviceWidth(context) * 0.045),
            topRight: Radius.circular(getDeviceWidth(context) * 0.045),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: getDeviceHight(context) * 0.3,
              decoration: BoxDecoration(
                color: Color(0xFF121318),
                image: DecorationImage(
                    image: NetworkImage(imgUrl!), fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(getDeviceWidth(context) * 0.045),
                  topRight: Radius.circular(getDeviceWidth(context) * 0.045),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: getDeviceHight(context) * 0.01),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AutoSizeText(
                    '$name',
                    style: subtitle(context).copyWith(
                        color: Color(0xFF656A7B),
                        fontSize: getDeviceWidth(context) * 0.045),
                  ),
                  SizedBox(
                    height: getDeviceHight(context) * 0.01,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: getDeviceHight(context) * 0.005,
                        backgroundColor: Color(0xFF00B14F),
                      ),
                      AutoSizeText(
                        ' $status',
                        style: subtitle(context).copyWith(
                            color: Color(0xFF656A7B),
                            fontSize: getDeviceWidth(context) * 0.03),
                      ),
                    ],
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

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:social_media_ui/Configs/Colors.dart';
import 'package:social_media_ui/Configs/ScreenUtils.dart';

class PostWidget extends StatelessWidget {
  String? imgUrl;
  String? name;
  String? profession;
  String? postUrl;

  PostWidget({this.imgUrl, this.name, this.profession, this.postUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              radius: getDeviceWidth(context) * 0.07,
              backgroundImage: NetworkImage('$imgUrl'),
            ),
            title: AutoSizeText(
              name!,
              style: subtitle(context).copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: getDeviceWidth(context) * 0.06),
            ),
            subtitle: AutoSizeText(
              '$profession',
              style: subtitle(context).copyWith(
                  color: greyColor,
                  fontWeight: FontWeight.bold,
                  fontSize: getDeviceWidth(context) * 0.035),
            ),
          ),
          Container(
            height: getDeviceHight(context) * 0.45,
            child: Image.network(
              postUrl!,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: getDeviceHight(context) * 0.08,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    size: getDeviceWidth(context) * 0.08,
                  ),
                  onPressed: () {},
                  color: greyColor,
                ),
                IconButton(
                  icon: Icon(
                    Icons.chat_bubble_outline,
                    size: getDeviceWidth(context) * 0.08,
                  ),
                  onPressed: () {},
                  color: greyColor,
                ),
                IconButton(
                  icon: Icon(
                    Icons.share,
                    size: getDeviceWidth(context) * 0.08,
                  ),
                  onPressed: () {},
                  color: greyColor,
                ),
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: getDeviceWidth(context) * 0.045,
              backgroundImage: NetworkImage('$imgUrl'),
            ),
            title: Container(
              width: getDeviceWidth(context) * 0.7,
              child: AutoSizeText(
                'Sam 123, Its_me_kaiz and 87 others',
                overflow: TextOverflow.ellipsis,
                style: subtitle(context).copyWith(
                    color: greyColor,
                    fontSize: getDeviceWidth(context) * 0.05),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getDeviceWidth(context) * 0.05,
              right: getDeviceWidth(context) * 0.08,
              bottom: getDeviceHight(context) * 0.045,
            ),
            child: AutoSizeText(
              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut.',
              style: subtitle(context).copyWith(
                  color: greyColor,
                  fontSize: getDeviceWidth(context) * 0.035),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:social_media_ui/Configs/ScreenUtils.dart';

class CustomizedContainer extends StatelessWidget {
  double? width;
  Color? color;
  Widget? child;

  CustomizedContainer({this.width, this.color, this.child,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius:
            BorderRadius.all(Radius.circular(getDeviceWidth(context) * 0.095)),
      ),
      child: Padding(
        padding: EdgeInsets.all(getDeviceWidth(context) * 0.02),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}

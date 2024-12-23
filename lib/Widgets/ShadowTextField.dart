import 'package:flutter/material.dart';
import 'package:social_media_ui/Configs/Colors.dart';
import 'package:social_media_ui/Configs/ScreenUtils.dart';

class ShadowTextField extends StatefulWidget {
  String? hintText;
  TextEditingController? textEditingController;
  Widget? suffixWidget;

  ShadowTextField(
      {this.hintText, this.textEditingController, this.suffixWidget});

  @override
  _ShadowTextFieldState createState() => _ShadowTextFieldState();
}

class _ShadowTextFieldState extends State<ShadowTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 4,
            offset: Offset(0,2),
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(getDeviceWidth(context) * 0.075),
        ),
      ),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getDeviceWidth(context) * 0.05),
        child: TextField(
          cursorColor: purpleColor,
          maxLines: null,
          style: subtitle(context)
              .copyWith(color: purpleColor, fontWeight: FontWeight.bold),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(getDeviceWidth(context) * 0.035),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: widget.hintText,
            hintStyle: subtitle(context).copyWith(
              color: greyColor.withOpacity(0.45),
              fontSize: getDeviceWidth(context) * 0.045,
            ),
            suffixIcon: widget.suffixWidget,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:social_media_ui/Configs/Colors.dart';
import 'package:social_media_ui/Configs/ScreenUtils.dart';

class CustomizedTextFields extends StatefulWidget {
  String? hintText;
  Widget? prefixWidget;
  TextEditingController? textEditingController;
  Widget? suffixWidget;
  bool? isObscure;

  CustomizedTextFields(
      {this.hintText,
      this.prefixWidget,
      this.textEditingController,
      this.suffixWidget,
      this.isObscure = false});

  @override
  _CustomizedTextFieldsState createState() => _CustomizedTextFieldsState();
}

class _CustomizedTextFieldsState extends State<CustomizedTextFields> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getDeviceWidth(context) * 0.05),
      child: TextField(
        obscureText: widget.isObscure!,
        style: subtitle(context)
            .copyWith(color: purpleColor, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(getDeviceWidth(context) * 0.035),
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: purpleColor.withOpacity(0.4), width: 2),
            borderRadius: BorderRadius.all(
                Radius.circular(getDeviceWidth(context) * 0.095)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: purpleColor, width: 2),
            borderRadius: BorderRadius.all(
                Radius.circular(getDeviceWidth(context) * 0.095)),
          ),
          hintText: widget.hintText,
          hintStyle: subtitle(context).copyWith(
            color: greyColor,
            fontSize: getDeviceWidth(context) * 0.045,
          ),
          prefixIcon: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getDeviceWidth(context) * 0.015),
              child: widget.prefixWidget),
          suffixIcon: widget.suffixWidget,
        ),
      ),
    );
  }
}

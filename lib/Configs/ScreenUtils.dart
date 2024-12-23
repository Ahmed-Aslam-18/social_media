import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double getDeviceHight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double getTopPadding(BuildContext context) {
  return MediaQuery.of(context).padding.top;
}

double getDeviceWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

TextStyle title(BuildContext context) {
  return TextStyle(
      color: Colors.black, fontSize: getDeviceWidth(context) * 0.1);
}

TextStyle CustomHeaderStyle(BuildContext context) {
  return GoogleFonts.electrolize(
      color: Colors.black,
      fontSize: getDeviceWidth(context) * 0.1,
      fontWeight: FontWeight.bold);
}
//
// void showToast(BuildContext context, String text) {
//   Fluttertoast.showToast(
//       msg: "$text",
//       gravity: ToastGravity.BOTTOM,
//       backgroundColor: Colors.black,
//       textColor: Colors.white,
//       fontSize: getDeviceHight(context) * 0.035);
// }

TextStyle subtitle(BuildContext context) {
  return TextStyle(
      fontFamily: 'ArialMT',
      color: Color(0xFF656A7B),
      fontSize: getDeviceWidth(context) * 0.05);
}

TextStyle body1(BuildContext context) {
  return GoogleFonts.electrolize(
      color: Colors.black, fontSize: getDeviceWidth(context) * 0.06);
}

TextStyle body2(BuildContext context) {
  return GoogleFonts.electrolize(
      color: Colors.black, fontSize: getDeviceWidth(context) * 0.038);
}

TextStyle NewAccsubtitle(BuildContext context) {
  return GoogleFonts.electrolize(
      color: Colors.black, fontSize: getDeviceWidth(context) * 0.045);
}

class Myclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 30);
    path.quadraticBezierTo(
        size.width / 2, size.height + 15, size.width, size.height - 30);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class CustomHalfCircleClipper extends CustomClipper<Path> {
  double deviceHeight;
  double deivceWidth;

  CustomHalfCircleClipper(this.deviceHeight, this.deivceWidth);

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, deviceHeight * 0.02);
//    path.quadraticBezierTo(size.height / 2, 0 , size.height-10, 0);
    path.quadraticBezierTo(size.width / 2, size.height + deviceHeight * 0.02,
        size.width, deviceHeight * 0.02);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

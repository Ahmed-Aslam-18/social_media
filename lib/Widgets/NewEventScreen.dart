import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:social_media_ui/Configs/Colors.dart';
import 'package:social_media_ui/Configs/ScreenUtils.dart';
import 'package:social_media_ui/Widgets/CustomizedContainer.dart';

import 'CustomizedTextFields.dart';

class NewEventScreen extends StatefulWidget {
  @override
  _NewEventScreenState createState() => _NewEventScreenState();
}

class _NewEventScreenState extends State<NewEventScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getDeviceHight(context) * 0.92,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getDeviceHight(context) * 0.045,
            ),
            AutoSizeText(
              'New Event',
              style: subtitle(context).copyWith(
                  color: Color(0xFF707070),
                  fontWeight: FontWeight.bold,
                  fontSize: getDeviceWidth(context) * 0.065),
            ),
            SizedBox(
              height: getDeviceHight(context) * 0.045,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: getDeviceWidth(context) * 0.9,
                    height: getDeviceHight(context) * 0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            'https://blogmedia.evbstatic.com/wp-content/uploads/wpmulti/sites/8/shutterstock_199419065.jpg',
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(
                        Radius.circular(getDeviceWidth(context) * 0.045),
                      ),
                    ),
                  ),
                  Container(
                    width: getDeviceWidth(context) * 0.9,
                    height: getDeviceHight(context) * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.all(
                        Radius.circular(getDeviceWidth(context) * 0.045),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                            bottom: getDeviceHight(context) * 0.015),
                        child: AutoSizeText(
                          'New Year Party',
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
            ),
            SizedBox(
              height: getDeviceHight(context) * 0.02,
            ),
            Container(
              width: getDeviceWidth(context) * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText(
                    'Make this Event Private',
                    style: subtitle(context).copyWith(
                        color: Color(0xFF707070),
                        fontSize: getDeviceWidth(context) * 0.045),
                  ),
                  Switch.adaptive(
                    value: true,
                    onChanged: (val) {},
                    activeColor: purpleColor,
                  )
                ],
              ),
            ),
            SizedBox(
              height: getDeviceHight(context) * 0.015,
            ),
            CustomizedTextFields(
              hintText: "New Year Party",
              prefixWidget: Container(
                width: 0,
                height: 0,
              ),
            ),
            SizedBox(
              height: getDeviceHight(context) * 0.015,
            ),
            CustomizedTextFields(
              hintText: "Location",
              prefixWidget: Container(
                width: 0,
                height: 0,
              ),
            ),
            SizedBox(
              height: getDeviceHight(context) * 0.015,
            ),
            CustomizedTextFields(
              hintText: "Choose a Date",
              prefixWidget: Container(
                width: 0,
                height: 0,
              ),
              suffixWidget: IconButton(
                icon: Icon(
                  Icons.calendar_today_outlined,
                  color: greyColor,
                ),
                onPressed: () {
                  showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1980),
                      lastDate: DateTime(2050));
                },
              ),
            ),
            SizedBox(
              height: getDeviceHight(context) * 0.015,
            ),
            CustomizedTextFields(
              hintText: "Time",
              prefixWidget: Container(
                width: 0,
                height: 0,
              ),
            ),
            SizedBox(
              height: getDeviceHight(context) * 0.015,
            ),
            CustomizedTextFields(
              hintText: "Dress code (not required)",
              prefixWidget: Container(
                width: 0,
                height: 0,
              ),
            ),
            SizedBox(
              height: getDeviceHight(context) * 0.015,
            ),
            CustomizedTextFields(
              hintText: "Number of people allowed",
              prefixWidget: Container(
                width: 0,
                height: 0,
              ),
            ),
            SizedBox(
              height: getDeviceHight(context) * 0.035,
            ),
            Container(
              width: getDeviceWidth(context) * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomizedContainer(
                    width: getDeviceWidth(context) * 0.4,
                    color: purpleColor,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getDeviceWidth(context) * 0.05),
                      child: AutoSizeText(
                        'Free',
                        style: subtitle(context).copyWith(
                            color: Color(0xFFFFFFFF),
                            fontSize: getDeviceWidth(context) * 0.06,
                           ),
                      ),
                    ),
                  ),
                  Container(
                    width: getDeviceWidth(context) * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(getDeviceWidth(context) * 0.095)),
                      border: Border.all(color: Color(0xFF656A7B)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(getDeviceWidth(context) * 0.02),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: getDeviceWidth(context) * 0.05),
                          child: AutoSizeText(
                            'Pay to enter',
                            style: subtitle(context).copyWith(
                                color: Color(0xFF656A7B),
                                fontSize: getDeviceWidth(context) * 0.045,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getDeviceHight(context) * 0.035,
            ),

            Center(
              child: CustomizedContainer(
                width: getDeviceWidth(context) * 0.4,
                color: purpleColor,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getDeviceWidth(context) * 0.05),
                  child: AutoSizeText(
                    'Start!',
                    style: subtitle(context).copyWith(
                        color: Color(0xFFFFFFFF),
                        fontSize: getDeviceWidth(context) * 0.06,
                       ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: getDeviceHight(context) * 0.035,
            ),
          ],
        ),
      ),
    );
  }
}

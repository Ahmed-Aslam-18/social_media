import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:social_media_ui/Configs/Colors.dart';
import 'package:social_media_ui/Configs/ScreenUtils.dart';
import 'package:social_media_ui/Widgets/EventCard.dart';
import 'package:social_media_ui/Widgets/TimelineScreen.dart';

import 'CustomizedContainer.dart';

class ExploreScreen extends StatefulWidget {
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  bool applyFilter = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getDeviceHight(context) * 0.9,
      child: SingleChildScrollView(
        child: Column(
          children: [
            TopContainer(
                context,
                applyFilter
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back_ios_outlined,
                                size: getDeviceWidth(context) * 0.08),
                            onPressed: () {
                              setState(() {
                                applyFilter = false;
                              });
                            },
                            color: greyColor,
                          ),
                          AutoSizeText(
                            'Filter Events',
                            style: subtitle(context).copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: getDeviceWidth(context) * 0.055),
                          ),
                          IconButton(
                            icon: Icon(Icons.filter_list,
                                size: getDeviceWidth(context) * 0.08),
                            onPressed: () {},
                            color: Color(0xFF656A7B),
                          )
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(),
                          AutoSizeText(
                            'Explore Events',
                            style: subtitle(context).copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: getDeviceWidth(context) * 0.055),
                          ),
                          IconButton(
                            icon: Icon(Icons.filter_list,
                                size: getDeviceWidth(context) * 0.08),
                            onPressed: () {
                              setState(() {
                                applyFilter = true;
                              });
                            },
                            color: blueColor,
                          )
                        ],
                      )),
            Container(
              height: getDeviceHight(context) * 0.8,
              child: applyFilter ? SelectFiltersWidget() : MainEventWidget(),
            ),
          ],
        ),
      ),
    );
  }

  Widget MainEventWidget() {
    return ListView(
      shrinkWrap: true,
      children: [
        SizedBox(
          height: getDeviceHight(context) * 0.025,
        ),
        Padding(
          padding: EdgeInsets.only(left: getDeviceWidth(context) * 0.05),
          child: Align(
            alignment: Alignment.centerLeft,
            child: AutoSizeText(
              'Today',
              style: subtitle(context).copyWith(
                  color: greyColor,
                  fontWeight: FontWeight.w700,
                  fontSize: getDeviceWidth(context) * 0.055),
            ),
          ),
        ),
        Container(
          height: getDeviceHight(context) * 0.35,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              EventCard(
                imgUrl:
                    'https://blogmedia.evbstatic.com/wp-content/uploads/wpmulti/sites/8/shutterstock_199419065.jpg',
                title: 'New Year Party',
                type: 'Public',
                date: '01/01/2021(Today)',
                location: 'California(10 KM away)',
              ),
              EventCard(
                imgUrl:
                    'http://cdn28.us1.fansshare.com/photograph/australianmodels/australian-model-phoebe-tonkin-smile-high-resolution-wallpaper-for-desktop-background-download-phoebe-tonkin-images-free-wallpaper-1314016135.jpg',
                title: 'New Year Party',
                type: 'Public',
                date: '01/01/2021(Today)',
                location: 'California(10 KM away)',
              ),
            ],
          ),
        ),
        SizedBox(
          height: getDeviceHight(context) * 0.025,
        ),
        Padding(
          padding: EdgeInsets.only(left: getDeviceWidth(context) * 0.05),
          child: Align(
            alignment: Alignment.centerLeft,
            child: AutoSizeText(
              'Upcoming',
              style: subtitle(context).copyWith(
                  color: Color(0xFF656A7B),
                  fontWeight: FontWeight.w700,
                  fontSize: getDeviceWidth(context) * 0.055),
            ),
          ),
        ),
        Container(
          height: getDeviceHight(context) * 0.35,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              EventCard(
                imgUrl:
                    'https://www.collegeatlas.org/wp-content/uploads/2014/06/Top-Party-Schools-main-image.jpg',
                title: 'New Year Party',
                type: 'Public',
                date: '01/01/2021(Today)',
                location: 'California(10 KM away)',
              ),
              EventCard(
                imgUrl:
                    'https://static.toiimg.com/thumb/67228025/Goa-party-new-year.jpg?width=1200&height=900',
                title: 'New Year Party',
                type: 'Public',
                date: '01/01/2021(Today)',
                location: 'California(10 KM away)',
              ),
            ],
          ),
        ),
        SizedBox(
          height: getDeviceHight(context) * 0.025,
        ),
        Padding(
          padding: EdgeInsets.only(left: getDeviceWidth(context) * 0.05),
          child: Align(
            alignment: Alignment.centerLeft,
            child: AutoSizeText(
              'Earlier',
              style: subtitle(context).copyWith(
                  color: Color(0xFF656A7B),
                  fontWeight: FontWeight.w700,
                  fontSize: getDeviceWidth(context) * 0.055),
            ),
          ),
        ),
        Container(
          height: getDeviceHight(context) * 0.35,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              EventCard(
                imgUrl:
                    'https://media.istockphoto.com/photos/nicelooking-attractive-gorgeous-glamorous-elegant-stylish-cheerful-picture-id1165055006?k=6&m=1165055006&s=612x612&w=0&h=X_d75QPcjQ0Zx-X2tTD4npQOIjD6lKXdDPqxJHuovhc=',
                title: 'New Year Party',
                type: 'Public',
                date: '01/01/2021(Today)',
                location: 'California(10 KM away)',
              ),
              EventCard(
                imgUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5uVArbEFhwiyxV0swEYuJ1dRR_mMf5tOhAg&usqp=CAU',
                title: 'New Year Party',
                type: 'Public',
                date: '01/01/2021(Today)',
                location: 'California(10 KM away)',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget SelectFiltersWidget() {
    var _currencies = [
      "Chilling",
      "Transport",
      "Personal",
      "Shopping",
      "Medical",
      "Rent",
      "Movie",
      "Salary"
    ];

    String _currentSelectedValue;

    return ListView(
      shrinkWrap: true,
      children: [
        SizedBox(
          height: getDeviceHight(context) * 0.015,
        ),
        Card(
          color: Theme.of(context).primaryColor,
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(left: getDeviceWidth(context) * 0.05),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText(
                    'By Date',
                    style: subtitle(context).copyWith(
                        color: greyColor,
                        fontWeight: FontWeight.w700,
                        fontSize: getDeviceWidth(context) * 0.055),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getDeviceWidth(context) * 0.05,
                    top: getDeviceHight(context) * 0.01),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText(
                    'Select or enter a date',
                    style: subtitle(context).copyWith(
                        color: greyColor,
                        fontWeight: FontWeight.w300,
                        fontSize: getDeviceWidth(context) * 0.055),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getDeviceWidth(context) * 0.15,
                    top: getDeviceHight(context) * 0.025),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          AutoSizeText(
                            'Today',
                            style: subtitle(context).copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize: getDeviceWidth(context) * 0.055),
                          ),
                          SizedBox(
                            width: getDeviceWidth(context) * 0.025,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: blueColor,
                          ),
                        ],
                      ),
                      SizedBox(height: getDeviceHight(context) * 0.01),
                      Container(
                        width: getDeviceWidth(context) * 0.7,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: greyColor,
                              ),
                            ),
                            hintText: 'Enter any date here',
                            hintStyle: subtitle(context).copyWith(
                              color: greyColor,
                            ),
                            suffixIcon: IconButton(
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
                        ),
                      ),
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
        SizedBox(
          height: getDeviceHight(context) * 0.015,
        ),
        Card(
          color: Theme.of(context).primaryColor,
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(left: getDeviceWidth(context) * 0.05),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText(
                    'By Activity',
                    style: subtitle(context).copyWith(
                        color: greyColor,
                        fontWeight: FontWeight.w700,
                        fontSize: getDeviceWidth(context) * 0.055),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getDeviceWidth(context) * 0.15,
                    top: getDeviceHight(context) * 0.025),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: getDeviceHight(context) * 0.01),
                      Container(
                        width: getDeviceWidth(context) * 0.8,
                        child: DropdownButtonFormField(
                          icon: Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: blueColor,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: greyColor,
                              ),
                            ),
                            hintText: 'Enter activity here',
                            hintStyle: subtitle(context).copyWith(
                              color: greyColor,
                            ),
                          ),
                          dropdownColor: Theme.of(context).primaryColor,
                          items: _currencies.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: AutoSizeText(
                                value,
                                style: subtitle(context)
                                    .copyWith(color: greyColor),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _currentSelectedValue = newValue!;
                            });
                          },
                        ),
                      ),
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
        SizedBox(
          height: getDeviceHight(context) * 0.08,
        ),
        Center(
          child: CustomizedContainer(
            width: getDeviceWidth(context) * 0.45,
            color: purpleColor,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getDeviceWidth(context) * 0.05),
              child: AutoSizeText(
                'Apply filter',
                style: subtitle(context).copyWith(
                  color: Color(0xFFFFFFFF),
                  fontSize: getDeviceWidth(context) * 0.045,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: getDeviceHight(context) * 0.08,
        ),
      ],
    );
  }
}

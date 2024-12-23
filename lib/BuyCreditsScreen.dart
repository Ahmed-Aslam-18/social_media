import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:social_media_ui/Configs/Colors.dart';
import 'package:social_media_ui/Configs/ScreenUtils.dart';

class BuyCreditsScreen extends StatefulWidget {
  @override
  _BuyCreditsScreenState createState() => _BuyCreditsScreenState();
}

class _BuyCreditsScreenState extends State<BuyCreditsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: getDeviceHight(context) * 0.3,
            width: getDeviceWidth(context),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  blueColor,
                  purpleColor,
                  purpleColor,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(getDeviceWidth(context) * 0.065),
                bottomRight: Radius.circular(getDeviceWidth(context) * 0.065),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'Assets/evvovHori.png',
                  width: getDeviceWidth(context) * 0.35,
                  height: getDeviceHight(context) * 0.15,
                  fit: BoxFit.cover,
                ),
                AutoSizeText(
                  'Get Credits',
                  style: subtitle(context).copyWith(
                      color: Colors.white,
                      fontSize: getDeviceWidth(context) * 0.075,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: getDeviceHight(context) * 0.05,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getDeviceWidth(context) * 0.15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                dollarCircle(credits: '1000', price: '5'),
                dollarCircle(credits: '1500', price: '10'),
              ],
            ),
          ),
          SizedBox(
            height: getDeviceHight(context) * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getDeviceWidth(context) * 0.15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                dollarCircle(credits: '5000', price: '15'),
                dollarCircle(credits: '100000', price: '200'),
              ],
            ),
          ),
          SizedBox(
            height: getDeviceHight(context) * 0.07,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getDeviceWidth(context) * 0.025),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  color: Theme.of(context).primaryColor,
                  elevation: 5,
                  child: Container(
                    width: getDeviceWidth(context) * 0.25,
                    height: getDeviceHight(context) * 0.05,
                    child: Padding(
                      padding: EdgeInsets.all(getDeviceWidth(context) * 0.015),
                      child: Image.asset(
                        'Assets/master.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Theme.of(context).primaryColor,
                  elevation: 5,
                  child: Container(
                    width: getDeviceWidth(context) * 0.25,
                    height: getDeviceHight(context) * 0.05,
                    child: Padding(
                      padding: EdgeInsets.all(getDeviceWidth(context) * 0.015),
                      child: Image.asset(
                        'Assets/visa.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Theme.of(context).primaryColor,
                  elevation: 5,
                  child: Container(
                    width: getDeviceWidth(context) * 0.25,
                    height: getDeviceHight(context) * 0.05,
                    child: Padding(
                      padding: EdgeInsets.all(getDeviceWidth(context) * 0.015),
                      child: Image.asset(
                        'Assets/paypal.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }

  Widget dollarCircle({String? credits, String? price}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                blueColor,
                purpleColor,
                purpleColor,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: CircleAvatar(
            radius: getDeviceWidth(context) * 0.12,
            backgroundColor: Colors.transparent,
            child: Center(
              child: AutoSizeText(
                '\$',
                style: subtitle(context).copyWith(
                    color: Colors.white,
                    fontSize: getDeviceWidth(context) * 0.12,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(
          height: getDeviceHight(context) * 0.015,
        ),
        AutoSizeText(
          '$credits Credits',
          style: subtitle(context).copyWith(
              color: greyColor,
              fontSize: getDeviceWidth(context) * 0.045,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: getDeviceHight(context) * 0.01,
        ),
        AutoSizeText(
          '\$ $price',
          style: subtitle(context).copyWith(
              color: greyColor,
              fontSize: getDeviceWidth(context) * 0.045,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

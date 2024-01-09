import 'package:flutter/material.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/custom_style.dart';
import 'package:xtrade/utils/dimensions.dart';
import 'package:xtrade/utils/strings.dart';

class AboutAppScreen extends StatelessWidget {
  const AboutAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: CustomColor.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "About",
          style: TextStyle(color: CustomColor.gray),
        ),
        elevation: 1,
        backgroundColor: CustomColor.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: CustomColor.gray,
          ),
        ),
      ),
      body: SizedBox(
          // height: 600 ,
          child: ListView(
        children: [
          SizedBox(
            height: Dimensions.heightSize,
          ),
          Container(
            height: 150,
            margin: const EdgeInsets.all(0),
            decoration: const BoxDecoration(
              color: CustomColor.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Image.asset(
              "assets/logo/logo_iphone.png",
              // cacheWidth: 70,
              // cacheHeight: 70,
            ),
          ),
          SizedBox(
            height: Dimensions.heightSize * 1.5,
          ),
          Text(
            Strings.slogan,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: CustomColor.primaryColor,
                fontSize: Dimensions.smallTextSize + 2,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: Dimensions.heightSize * 1.5,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  Strings.aboutOne,
                  style: CustomStyle.normalTextStyle,
                ),
                Text(
                  Strings.aboutOne,
                  style: CustomStyle.normalTextStyle,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Terms of Service",
                          style: TextStyle(color: CustomColor.primaryColor),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: CustomColor.gray),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "PrivacyPolicy",
                          style: TextStyle(color: CustomColor.primaryColor),
                        )),
                  ],
                ),
                SizedBox(
                  height: Dimensions.heightSize * 1.5,
                ),
                const Text(
                  "Version 1.0.0 Build 21",
                  style: TextStyle(color: CustomColor.gray),
                ),
                const Text(
                  "2022 xTrading Marketplace, Inc",
                  style: TextStyle(color: CustomColor.gray),
                ),
              ],
            ),
          ),
        ],
      )),
    ));
  }
}

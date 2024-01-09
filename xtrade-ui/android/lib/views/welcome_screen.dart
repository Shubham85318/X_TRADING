import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtrade/routes/routes.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/dimensions.dart';
import 'package:xtrade/utils/strings.dart';
import 'package:xtrade/widgets/buttons/primary_button_widget.dart';
import 'package:xtrade/widgets/buttons/secondary_button_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: CustomColor.white,
                ),
                child: Image.asset("assets/logo/logo_iphone.png",
                  cacheWidth: 122, cacheHeight: 209,
                ),
              ),
              SizedBox(
                height: Dimensions.heightSize * 1.5,
              ),
              Text(
                Strings.welcomeTo,
                style: TextStyle(
                  fontSize: Dimensions.extraLargeTextSize + 3,
                  fontWeight: FontWeight.w500,
                  color: CustomColor.primaryColor,
                ),
              ),
              Text(
                Strings.welcomeLargestTradingMarketplace,
                style: TextStyle(
                  fontSize: Dimensions.extraLargeTextSize,
                  fontWeight: FontWeight.w100,
                  color: CustomColor.primaryColor,
                ),
              ),
              SizedBox(
                height: Dimensions.heightSize * 5,
              ),
              PrimaryButtonWidget(
                  title: Strings.sighIn,
                  onPressed: () {
                    Get.toNamed(Routes.signInScreen);
                  }),
              SecondaryButtonWidget(
                title: Strings.sighUp,
                onPressed: (){
                  Get.toNamed(Routes.signUpScreen);
                },
              ),
              SizedBox(
                height: Dimensions.heightSize * 1.5,
              ),
              GestureDetector(
                child: Text(
                  Strings.guest,
                  style: TextStyle(
                    fontSize: Dimensions.smallTextSize,
                    fontWeight: FontWeight.w100,
                    color: CustomColor.gray,
                  ),
                ),
                onTap: () {
                  Get.toNamed(Routes.homeScreen);
                },
              ),
            ],
          ),
        ),
      )
    );
  }
}

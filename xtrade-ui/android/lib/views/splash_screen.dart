import 'package:flutter/material.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/dimensions.dart';
import 'package:xtrade/utils/strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: CustomColor.white,
              ),
              child: Image.asset("assets/logo/logo_iphone.png"),
            ),
            SizedBox(
              height: Dimensions.heightSize * 1.5,
            ),
            Text(
              Strings.slogan,
              style: TextStyle(
                fontSize: Dimensions.extraLargeTextSize,
                color: CustomColor.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}


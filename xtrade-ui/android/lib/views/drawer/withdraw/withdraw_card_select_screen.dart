import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtrade/routes/routes.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/custom_icons_icons.dart';

class WithdrawCardSelectScreen extends StatelessWidget {
  const WithdrawCardSelectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: CustomColor.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Withdraw",
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
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.withdrawMoneyScreen);
            },
            child: Card(
              elevation: 5,
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage("assets/logo/visa.png"),
                      fit: BoxFit.fitHeight),
                  color: CustomColor.white,
                  // border: Border.all(color: CustomColor.primaryColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              left: 110,
                              bottom: 90,
                              height: 30,
                              width: 30,
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: CustomColor.gray,
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  child: Center(
                                    child: IconButton(
                                      icon: const Icon(
                                        CustomIcons.settings,
                                        color: CustomColor.white,
                                        size: 13,
                                      ),
                                      onPressed: () {
                                        Get.toNamed(Routes.visaCardScreen);
                                      },
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "VISA Card",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.withdrawMoneyScreen);
            },
            child: Card(
              elevation: 5,
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage("assets/logo/mastercard.png"),
                      fit: BoxFit.fitHeight),
                  color: CustomColor.white,
                  // border: Border.all(color: CustomColor.primaryColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              left: 110,
                              bottom: 90,
                              height: 30,
                              width: 30,
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: CustomColor.gray,
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  child: Center(
                                    child: IconButton(
                                      icon: const Icon(
                                        CustomIcons.settings,
                                        color: CustomColor.white,
                                        size: 13,
                                      ),
                                      onPressed: () {
                                        Get.toNamed(Routes.visaCardScreen);
                                      },
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Mastercard",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.withdrawMoneyScreen);
            },
            child: Card(
              elevation: 5,
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage("assets/logo/paypal.png"),
                      fit: BoxFit.fitHeight),
                  color: CustomColor.white,
                  // border: Border.all(color: CustomColor.primaryColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              left: 110,
                              bottom: 90,
                              height: 30,
                              width: 30,
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: CustomColor.gray,
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  child: Center(
                                    child: IconButton(
                                      icon: const Icon(
                                        CustomIcons.settings,
                                        color: CustomColor.white,
                                        size: 13,
                                      ),
                                      onPressed: () {
                                        Get.toNamed(Routes.visaCardScreen);
                                      },
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Paypal",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.withdrawMoneyScreen);
            },
            child: Card(
              elevation: 5,
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage("assets/logo/skrill.png"),
                      fit: BoxFit.fitHeight),
                  color: CustomColor.white,
                  // border: Border.all(color: CustomColor.primaryColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              left: 110,
                              bottom: 90,
                              height: 30,
                              width: 30,
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: CustomColor.gray,
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  child: Center(
                                    child: IconButton(
                                      icon: const Icon(
                                        CustomIcons.settings,
                                        color: CustomColor.white,
                                        size: 13,
                                      ),
                                      onPressed: () {
                                        Get.toNamed(Routes.visaCardScreen);
                                      },
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Skrill",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

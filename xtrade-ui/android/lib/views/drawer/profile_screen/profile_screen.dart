import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtrade/routes/routes.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/dimensions.dart';
import 'package:xtrade/views/drawer/portfolio_screen/portfolio_tabs/open_position.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 170,
              color: CustomColor.primaryColor,
            ),
            Positioned(
                top: 20,
                left: 10,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 32,
                      backgroundColor: CustomColor.gray,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: const AssetImage(
                            "assets/images/profile_picture.png"),
                        child: Stack(children: const [
                          Align(
                              alignment: Alignment.bottomRight,
                              child: CircleAvatar(
                                radius: 9,
                                backgroundColor: CustomColor.white,
                                child: CircleAvatar(
                                  radius: 8,
                                  backgroundColor: CustomColor.primaryColor,
                                  child: Icon(
                                    Icons.camera_alt_rounded,
                                    color: CustomColor.white,
                                    size: 10,
                                  ),
                                ),
                              )),
                        ]),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Karnox Dilow",
                      style: TextStyle(color: CustomColor.white),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.location_on,
                          size: 10,
                          color: CustomColor.gray,
                        ),
                        Text(
                          "NewYork",
                          style:
                              TextStyle(fontSize: 10, color: CustomColor.gray),
                        )
                      ],
                    )
                  ],
                )),
            Positioned(
              top: 130,
              left: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.aboutUserScreen);
                    },
                    child: Container(
                      height: 30,
                      width: 100,
                      padding: const EdgeInsets.only(
                          right: 20, left: 20, top: 7, bottom: 5),
                      decoration: BoxDecoration(
                        color: CustomColor.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "ABOUT",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: CustomColor.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 100,
                      padding: const EdgeInsets.only(
                          right: 20, left: 20, top: 7, bottom: 5),
                      decoration: BoxDecoration(
                        color: CustomColor.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "ACHIEVE",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: CustomColor.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 40,
              right: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "Profit",
                        style: TextStyle(color: CustomColor.gray, fontSize: 14),
                      ),
                      Text(
                        "+18.80",
                        style: TextStyle(color: Colors.green, fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: Dimensions.widthSize,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "Balance",
                        style: TextStyle(color: CustomColor.gray, fontSize: 14),
                      ),
                      Text(
                        "1000 000.00",
                        style:
                            TextStyle(color: CustomColor.white, fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: 85,
              right: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "Margin Level",
                        style: TextStyle(color: CustomColor.gray, fontSize: 14),
                      ),
                      Text(
                        "18 818.84%",
                        style: TextStyle(color: Colors.green, fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: Dimensions.widthSize,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "Account Value",
                        style: TextStyle(color: CustomColor.gray, fontSize: 14),
                      ),
                      Text(
                        "100 087.97",
                        style:
                            TextStyle(color: CustomColor.white, fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                height: 100,
                child: const OpenPositionTab(),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 15, top: 20),
                child: Column(
                  children: const [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Latest News"),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Container(
                  margin: const EdgeInsets.only(left: 20, right: 10, top: 10),
                  child: FittedBox(
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                    child: Row(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.3),
                                    BlendMode.dstATop),
                                image: const ExactAssetImage(
                                    "assets/images/money.jpg"),
                                fit: BoxFit.cover),
                            color: CustomColor.black,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    "Dollar Exchange",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 150,
                          margin: const EdgeInsets.only(right: 20),
                          // height: categoryHeight,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.3),
                                    BlendMode.dstATop),
                                image: const ExactAssetImage(
                                    "assets/images/stock_white.jpg"),
                                fit: BoxFit.cover),
                            color: CustomColor.black,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    "Trading",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 150,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.8),
                                    BlendMode.dstATop),
                                image: const AssetImage(
                                    "assets/images/stock_black.png"),
                                fit: BoxFit.cover),
                            color: CustomColor.black,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    "Bitcoin",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 15, top: 20, bottom: 20),
                child: Column(
                  children: const [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Achieve"),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Container(
                  margin: const EdgeInsets.only(top: 10, left: 20, right: 10, bottom: 10),
                  child: FittedBox(
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Positioned(
                              child: Material(
                                elevation: 2,
                                borderRadius: BorderRadius.circular(20),
                                child: SizedBox(
                                  width: 300,
                                  height: 200,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 300,
                                        height: 140,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              colorFilter: ColorFilter.mode(
                                                  Colors.black.withOpacity(0.6),
                                                  BlendMode.dstATop),
                                              image: const ExactAssetImage(
                                                  "assets/images/bitcoin_background.jpg"),
                                              fit: BoxFit.cover),
                                          color: Colors.black,
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(20.0),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 25,
                                                left: 15,
                                                right: 15,
                                                bottom: 15),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: const [
                                                Align(
                                                  alignment: Alignment.bottomCenter,
                                                  child: Text(
                                                    "Bitcoin(Golden Member)",
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      color: CustomColor.black,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 110,
                              left: 120,
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: CustomColor.gray,
                                child: CircleAvatar(
                                  radius: 60,
                                  backgroundImage:
                                  AssetImage("assets/images/bitcoin.png"),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 15),
                        Stack(
                          children: [
                            Positioned(
                              child: Material(
                                elevation: 2,
                                borderRadius: BorderRadius.circular(20),
                                child: SizedBox(
                                  width: 300,
                                  height: 200,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 300,
                                        height: 140,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              colorFilter: ColorFilter.mode(
                                                  Colors.black.withOpacity(0.6),
                                                  BlendMode.dstATop),
                                              image: const ExactAssetImage(
                                                  "assets/images/eur_usd.jpg"),
                                              fit: BoxFit.cover),
                                          color: Colors.black,
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(20.0),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 25,
                                                left: 15,
                                                right: 15,
                                                bottom: 15),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: const [
                                                Align(
                                                  alignment: Alignment.bottomCenter,
                                                  child: Text(
                                                    "Bitcoin(Golden Member)",
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      color: CustomColor.black,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 110,
                              left: 120,
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: CustomColor.gray,
                                child: CircleAvatar(
                                  radius: 60,
                                  backgroundImage:
                                  AssetImage("assets/images/eurusd.png") ,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}

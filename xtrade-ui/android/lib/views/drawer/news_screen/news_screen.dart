import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtrade/routes/routes.dart';
import 'package:xtrade/utils/custom_color.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: CustomColor.white,
          body: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(right: 20, left: 15, top: 20),
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
                    const SizedBox(height: 20),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: Material(
                        elevation: 2,
                        borderRadius: BorderRadius.circular(20),
                        child: Row(
                          children: [
                            Container(
                              width: 160,
                              height: 180,
                              // margin: const EdgeInsets.only(right: 20),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/stock_black.png"),
                                    fit: BoxFit.cover),
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.end,
                                mainAxisAlignment:
                                MainAxisAlignment.end,
                                children: const [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: const [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "18 Jan 2022",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: CustomColor.gray,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Bitcoin; largest community",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: CustomColor.black,
                                            fontWeight:
                                            FontWeight.bold),
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
                    GestureDetector(
                      onTap: (){
                        Get.toNamed(Routes.eurUsdDetailsScreen);
                      },
                      child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                          child: Material(
                            elevation: 1,
                            borderRadius: BorderRadius.circular(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/eurusd.png"),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("16, Jan 2022"),
                                      ),
                                      Text(
                                        "EURUSD: Exchange offer",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}

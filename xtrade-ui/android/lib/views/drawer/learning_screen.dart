import 'package:flutter/material.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/dimensions.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: CustomColor.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Learning", style: TextStyle(
            color: CustomColor.gray
        ),),
        elevation: 1,
        backgroundColor: CustomColor.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios,color: CustomColor.gray,),
        ),
      ),
      body: SafeArea(
        child: Scaffold(
          backgroundColor: CustomColor.white,
          body: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 20, top: 20, left: 20),
                      child: const Text("Top Trading Strategies | Complete Course"),
                    ),
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
                                        "Price Action - Trading the News",
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontSize: 13,
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
                    Padding(
                      padding: EdgeInsets.only(
                        left: Dimensions.marginSize,
                        right: Dimensions.marginSize,
                        bottom: Dimensions.heightSize * 0.5
                      ),
                      child: const Text("How to Create a CFD Stock Portfolio | Complete Course"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: Dimensions.marginSize,
                        right: Dimensions.marginSize,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Material(
                              elevation: 2,
                              borderRadius: BorderRadius.circular(20),
                              child: SizedBox(
                                height: 220,
                                child: Column(
                                  children: [
                                    Container(
                                      width: 170,
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
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: const [
                                          Icon(Icons.play_circle_fill_rounded, color: CustomColor.white, size: 60,)
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: const [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "16 Jan 2022",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: CustomColor.gray,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "CFD Stock Portfolio 1",
                                              maxLines: 2,
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: CustomColor.black,
                                                  fontWeight:
                                                  FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: Dimensions.widthSize,),
                          Expanded(
                            flex: 1,
                            child: Material(
                              elevation: 2,
                              borderRadius: BorderRadius.circular(20),
                              child: SizedBox(
                                height: 220,
                                child: Column(
                                  children: [
                                    Container(
                                      width: 170,
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
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: const [
                                          Icon(Icons.play_circle_fill_rounded, color: CustomColor.white, size: 60,)
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: const [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "14 Jan 2022",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: CustomColor.gray,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "CFD Stock Portfolio 2",
                                              maxLines: 2,
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: CustomColor.black,
                                                  fontWeight:
                                                  FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: Dimensions.marginSize,
                        right: Dimensions.marginSize,
                        bottom: Dimensions.heightSize * 0.5,
                        top: Dimensions.heightSize
                      ),
                      child: const Text("Change Your Trading Mindset | Complete Course"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: Dimensions.marginSize,
                        right: Dimensions.marginSize,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Material(
                              elevation: 2,
                              borderRadius: BorderRadius.circular(20),
                              child: SizedBox(
                                height: 220,
                                child: Column(
                                  children: [
                                    Container(
                                      width: 170,
                                      height: 140,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            colorFilter: ColorFilter.mode(
                                                Colors.black.withOpacity(0.6),
                                                BlendMode.dstATop),
                                            image: const ExactAssetImage(
                                                "assets/images/stock_white.jpg"),
                                            fit: BoxFit.cover),
                                        color: Colors.black,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(20.0),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: const [
                                          Icon(Icons.play_circle_fill_rounded, color: CustomColor.white, size: 60,)
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: const [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "16 Jan 2022",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: CustomColor.gray,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "CFD Stock Portfolio 1",
                                              maxLines: 2,
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: CustomColor.black,
                                                  fontWeight:
                                                  FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: Dimensions.widthSize,),
                          Expanded(
                            flex: 1,
                            child: Material(
                              elevation: 2,
                              borderRadius: BorderRadius.circular(20),
                              child: SizedBox(
                                height: 220,
                                child: Column(
                                  children: [
                                    Container(
                                      width: 170,
                                      height: 140,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            colorFilter: ColorFilter.mode(
                                                Colors.black.withOpacity(0.6),
                                                BlendMode.dstATop),
                                            image: const ExactAssetImage(
                                                "assets/images/stock_white.jpg"),
                                            fit: BoxFit.cover),
                                        color: Colors.black,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(20.0),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: const [
                                          Icon(Icons.play_circle_fill_rounded, color: CustomColor.white, size: 60,)
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: const [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "14 Jan 2022",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: CustomColor.gray,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "CFD Stock Portfolio 2",
                                              maxLines: 2,
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: CustomColor.black,
                                                  fontWeight:
                                                  FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:xtrade/utils/custom_color.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Discover",
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
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                children: const [
                  TrendingWidget(),
                  SizedBox(
                    height: 30,
                  ),
                  PopularWidget(),
                  SizedBox(
                    height: 30,
                  ),
                  PreciousMetals(),
                  SizedBox(
                    height: 30,
                  ),
                  Cryptocurrencies(),
                  SizedBox(
                    height: 30,
                  ),
                ],
              )),
        )
      ),
    );
  }
}

class TrendingWidget extends StatelessWidget {
  const TrendingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Trending",
              style: TextStyle(
                  color: CustomColor.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Sell all",
              style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 10,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
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
                    margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        color: CustomColor.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        border: Border.all(
                            color: CustomColor.primaryColor, width: 2)
                        // border: Border.all(color: CustomColor.primaryColor)
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Information Protection",
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
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        color: CustomColor.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        border: Border.all(
                            color: CustomColor.primaryColor, width: 2)
                        // border: Border.all(color: CustomColor.primaryColor)
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Hot Commodities",
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
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        color: CustomColor.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        border: Border.all(
                            color: CustomColor.primaryColor, width: 2)
                        // border: Border.all(color: CustomColor.primaryColor)
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Environment",
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
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        color: CustomColor.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        border: Border.all(
                            color: CustomColor.primaryColor, width: 2)
                        // border: Border.all(color: CustomColor.primaryColor)
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Top ETFs",
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
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class PopularWidget extends StatelessWidget {
  const PopularWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Popular",
              style: TextStyle(
                  color: CustomColor.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Sell all",
              style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 10,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
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
                    margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        color: CustomColor.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        border: Border.all(
                            color: CustomColor.primaryColor, width: 2)
                        // border: Border.all(color: CustomColor.primaryColor)
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/eur_usd.jpg",
                                width: 70,
                                height: 50,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "EURUSD",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        color: CustomColor.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        border: Border.all(
                            color: CustomColor.primaryColor, width: 2)
                        // border: Border.all(color: CustomColor.primaryColor)
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/eur_usd.jpg",
                                width: 70,
                                height: 50,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "EURUSD",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class PreciousMetals extends StatelessWidget {
  const PreciousMetals({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Precious Metals",
              style: TextStyle(
                  color: CustomColor.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Sell all",
              style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 10,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
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
                    height: 150,
                    width: 150,
                    margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        color: CustomColor.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        border: Border.all(color: CustomColor.gray, width: 1)
                        // border: Border.all(color: CustomColor.primaryColor)
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration:
                                    const BoxDecoration(color: Colors.amber),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Gold",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        color: CustomColor.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        border: Border.all(color: CustomColor.gray, width: 1)
                        // border: Border.all(color: CustomColor.primaryColor)
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration:
                                    const BoxDecoration(color: Colors.black12),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Silver",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        color: CustomColor.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        border: Border.all(color: CustomColor.gray, width: 1)
                        // border: Border.all(color: CustomColor.primaryColor)
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration:
                                    const BoxDecoration(color: Colors.black45),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Platinum",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class Cryptocurrencies extends StatelessWidget {
  const Cryptocurrencies({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Cryptocurrencies",
              style: TextStyle(
                  color: CustomColor.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Sell all",
              style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 10,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
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
                    height: 150,
                    width: 150,
                    margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        color: CustomColor.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        border: Border.all(color: CustomColor.gray, width: 1)
                        // border: Border.all(color: CustomColor.primaryColor)
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: 80,
                                height: 80,
                                child: Image.asset("assets/icons/btc.png"),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Gold",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        color: CustomColor.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        border: Border.all(color: CustomColor.gray, width: 1)
                        // border: Border.all(color: CustomColor.primaryColor)
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: 80,
                                height: 80,
                                child: Image.asset("assets/icons/eth.png"),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Silver",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        color: CustomColor.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        border: Border.all(color: CustomColor.gray, width: 1)
                        // border: Border.all(color: CustomColor.primaryColor)
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: 80,
                                height: 80,
                                child: Image.asset("assets/icons/poly.png"),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Platinum",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xtrade/data/list_model.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/dimensions.dart';

class TradingScreen extends StatefulWidget {
  const TradingScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TradingScreenState createState() => _TradingScreenState();
}

class _TradingScreenState extends State<TradingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mainList.addAll(getFavoritesModel);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mainList.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(mainList[index].image),
                  SizedBox(
                    width: Dimensions.widthSize,
                  ),
                  Text(
                    mainList[index].name,
                    style:  TextStyle(
                        fontSize: Dimensions.defaultTextSize,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  SizedBox(
                    width: Dimensions.widthSize * 0.2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        mainList[index].icon,
                        size: 10,
                        color: mainList[index].icon ==
                            FontAwesomeIcons.anglesDown
                            ? Colors.red
                            : Colors.green,
                      ),
                      SizedBox(
                        width: Dimensions.widthSize * 1,
                      ),
                      Text(
                        mainList[index].persentage,
                        style: TextStyle(
                            color: mainList[index].icon ==
                                FontAwesomeIcons.anglesDown
                                ? Colors.red
                                : Colors.green,
                            fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 35,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "SELL",
                        style: TextStyle(
                            color: CustomColor.white,
                            fontSize: Dimensions.extraSmallTextSize
                        ),
                      ),
                      Text(
                        "1.1321",
                        style:TextStyle(
                            color: CustomColor.white,
                            fontSize: Dimensions.extraSmallTextSize
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: CustomColor.gray)),
                    child: Column(
                      children: const [
                        Text(
                          "2.50",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        ),
                        Text(
                          "Volume",
                          style: TextStyle(fontSize: 5),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  SizedBox(
                    width: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 10,
                            width: 25,
                            decoration: BoxDecoration(
                              color: CustomColor.white,
                              border: Border.all(color: CustomColor.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "-",
                                style: TextStyle(color: CustomColor.black,
                                    fontSize: 7,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 2),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 10,
                            width: 25,
                            decoration: BoxDecoration(
                              color: CustomColor.white,
                              border: Border.all(color: CustomColor.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "+",
                                style: TextStyle(color: CustomColor.black,
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 35,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  // padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "BUY",
                        style: TextStyle(
                            color: CustomColor.white,
                            fontSize: Dimensions.extraSmallTextSize
                        ),
                      ),
                      Text(
                        "1.1324",
                        style: TextStyle(
                            color: CustomColor.white,
                            fontSize: Dimensions.extraSmallTextSize
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

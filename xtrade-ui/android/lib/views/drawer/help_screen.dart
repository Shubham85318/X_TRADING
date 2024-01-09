import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtrade/routes/routes.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/dimensions.dart';
import 'package:xtrade/utils/strings.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 220,
                  color: CustomColor.primaryColor,
                ),
                Positioned(
                  top: 10,
                  right: 20,
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 10, top: 15),
                    child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Image.asset("assets/icons/close_icon.png")),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text(
                    Strings.hiThere,
                    style: const TextStyle(
                        color: CustomColor.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  ),
                  SizedBox(
                    height: Dimensions.heightSize,
                  ),
                  SizedBox(
                    width: 250,
                    child: Text(
                      Strings.askUsAnything,
                      style: const TextStyle(
                          color: CustomColor.gray,
                          fontSize: 15),
                    ),
                  ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Text(
                    Strings.startAConversation,
                    style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 18),
                  ),
                ),
                Positioned(
                  bottom: -40,
                  right: 40,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: GestureDetector(
                      onTap: (){ Get.toNamed(Routes.supportBox);},
                      child: CircleAvatar(
                        backgroundColor: CustomColor.primaryColor,
                        radius: 30,
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                          child: Stack(
                            children: [
                              Positioned(
                                  top: 22,
                                  left: 20,
                                  child: Image.asset(
                                      "assets/icons/message_icon2.png")),
                              Positioned(
                                  bottom: 25,
                                  left: 35,
                                  child: Image.asset(
                                      "assets/icons/message_icon1.png")),
                            ],
                          ),
                        ),
                      ),
                    )
                  ),
                ),
              ],
            ),
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 60),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    Strings.searchForHelp,
                    style: const TextStyle(
                        color: CustomColor.black,
                        fontSize: 15),
                  ),
                )),
            SizedBox(
              height: Dimensions.heightSize,
            ),
            Container(
              // height: 40,
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                // onChanged: (){},
                decoration: InputDecoration(
                  filled: true,
                  fillColor: CustomColor.searchbar,
                  contentPadding: const EdgeInsets.all(0),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: CustomColor.primaryColor,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                  hintStyle:
                      const TextStyle(fontSize: 14, color: CustomColor.gray),
                  hintText: Strings.searchArticles
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

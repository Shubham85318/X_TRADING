import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtrade/data/list_model.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/dimensions.dart';
import 'package:xtrade/views/home_screen/home_tabs/favorites_tab.dart';
import 'package:xtrade/views/home_screen/home_tabs/hot_tab.dart';
import 'package:xtrade/views/home_screen/home_tabs/point_if_view_tab.dart';

class HomeScreenTab extends StatefulWidget {
  const HomeScreenTab({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenTabState createState() => _HomeScreenTabState();
}

class AllTabs extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController controller;

  List<Tab> allTabs = <Tab>[
    Tab(
      child: Container(
        padding: const EdgeInsets.only(left: 5, right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: CustomColor.primaryColor, width: 2)),
        child: const Align(
          alignment: Alignment.center,
          child: Text("FAVORITES"),
        ),
      ),
    ),
    Tab(
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: CustomColor.primaryColor, width: 2)),
        child: const Align(
          alignment: Alignment.center,
          child: Text("HOT"),
        ),
      ),
    ),
    Tab(
      child: Container(
        padding: const EdgeInsets.only(left: 5, right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: CustomColor.primaryColor, width: 2)),
        child: const Align(
          alignment: Alignment.center,
          child: Text("Point if view"),
        ),
      ),
    ),
  ];


  @override
  void onInit() {
    // TODO: implement onInit
    controller = TabController(length: 3, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    controller.dispose();
    super.onClose();
  }
}




class _HomeScreenTabState extends State<HomeScreenTab> {
  bool pressAttention = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mainList.addAll(getFavoritesModel);
  }


  @override
  Widget build(BuildContext context) {
    final AllTabs tabs = Get.put(AllTabs());
    return Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 180,
              color: CustomColor.primaryColor,
            ),
            Positioned(
              top: 10,
              left: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Hi there,",
                    style: TextStyle(
                        color: CustomColor.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  const Text(
                    "Good Evening",
                    style:
                    TextStyle(color: CustomColor.gray, fontSize: 14),
                  ),
                  SizedBox(
                    height: Dimensions.heightSize,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColor.primaryColor,
                      side: const BorderSide(
                          width: 1.0, color: CustomColor.white),
                      elevation: 1,
                      // c: CustomColor.primaryColor,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          )),
                    ),
                    child: const Text("Invest More"),
                  )
                ],
              ),
            ),
            Positioned(
              top: 10,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "Profit",
                        style: TextStyle(
                            color: CustomColor.gray, fontSize: 14),
                      ),
                      Text(
                        "+18.80",
                        style:
                        TextStyle(color: Colors.green, fontSize: 14),
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
                        style: TextStyle(
                            color: CustomColor.gray, fontSize: 14),
                      ),
                      Text(
                        "1000 000.00",
                        style: TextStyle(
                            color: CustomColor.white, fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: 60,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "Margin Level",
                        style: TextStyle(
                            color: CustomColor.gray, fontSize: 14),
                      ),
                      Text(
                        "18 818.84%",
                        style:
                        TextStyle(color: Colors.green, fontSize: 14),
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
                        style: TextStyle(
                            color: CustomColor.gray, fontSize: 14),
                      ),
                      Text(
                        "100 087.97",
                        style: TextStyle(
                            color: CustomColor.white, fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              bottom: -25,
              // right: 20,
              child: SizedBox(
                  width: 350,
                  height: 50,
                  child: Container(
                    // height: 20,
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: TextField(
                        // onChanged: (){},
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: CustomColor.white,
                            contentPadding: const EdgeInsets.all(0),
                            prefixIcon: const Icon(
                              Icons.search,
                              color: CustomColor.primaryColor,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            hintStyle: const TextStyle(
                                fontSize: 14, color: CustomColor.gray),
                            hintText: "Search here"),
                      ),
                    ),
                  )),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(
              left: 50, right: 50, top: 40, bottom: 10),
          height: 30,
          child: TabBar(
            controller: tabs.controller,
            isScrollable: true,
            unselectedLabelColor: CustomColor.primaryColor,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: CustomColor.primaryColor),
            padding: EdgeInsets.zero,
            indicatorPadding: EdgeInsets.zero,
            labelPadding: const EdgeInsets.symmetric(horizontal: 5),
            tabs: tabs.allTabs,
          ),
        ),
        Expanded(
          child:
          TabBarView(controller: tabs.controller, children: const [
            FavoriteTab(),
            HotTab(),
            PrintIfViewTab(),
          ]),
        ),
      ],
    );
  }
}

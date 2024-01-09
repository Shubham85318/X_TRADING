import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtrade/routes/routes.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/dimensions.dart';
import 'package:xtrade/widgets/buttons/primary_button_widget.dart';
import 'package:xtrade/widgets/my_account_widget.dart';
import 'package:xtrade/widgets/other_account_widget.dart';



class DepositMoneyScreen extends StatefulWidget {
  const DepositMoneyScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DepositMoneyScreenState createState() => _DepositMoneyScreenState();
}

class DepositThisTabs extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController controller;

  List<Tab> allTabs = <Tab>[
    Tab(
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: CustomColor.primaryColor, width: 2)),
        child: const Align(
          alignment: Alignment.center,
          child: Text("MY ACCOUNT"),
        ),
      ),
    ),
    Tab(
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: CustomColor.primaryColor, width: 2)),
        child: const Align(
          alignment: Alignment.center,
          child: Text("OTHER ACCOUNT"),
        ),
      ),
    ),
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    controller = TabController(length: 2, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    controller.dispose();
    super.onClose();
  }
}

class _DepositMoneyScreenState extends State<DepositMoneyScreen> {

  @override
  Widget build(BuildContext context) {
    final tabs = Get.put(DepositThisTabs());
    return SafeArea(child: Scaffold(
      backgroundColor: CustomColor.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Deposit",
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
      body: Column(
        children: [
          Container(
            margin:
            const EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 10),
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
            child: TabBarView(controller: tabs.controller, children: const [
              MyAccountWidget(),
              OtherAccountWidget(),
            ]),
          ),
          SizedBox(
            height: Dimensions.heightSize * 0.2,
          ),
          PrimaryButtonWidget(
              title: "Proceed",
              onPressed: () {
                Get.toNamed(Routes.depositReviewScreen);
              }),
        ],
      ),
    ));
  }
}


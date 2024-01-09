import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:xtrade/routes/routes.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/custom_icons_icons.dart';
import 'package:xtrade/views/drawer/portfolio_screen/portfolio_screen.dart';
import 'package:xtrade/widgets/buttons/primary_button_widget.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: CustomColor.white,
      appBar: AppBar(
        backgroundColor: CustomColor.white,
        centerTitle: true,
        title: const Text(
          "Wallet",
          style: TextStyle(color: CustomColor.gray),
        ),
        iconTheme: const IconThemeData(color: CustomColor.gray),
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: CustomColor.gray),
                child: IconButton(
                  icon: const Icon(
                    CustomIcons.settings,
                    color: CustomColor.white,
                    size: 20,
                  ),
                  onPressed: () {
                    Get.toNamed(Routes.walletSettingsScreen);
                  },
                ),
              )
            ],
          ),
          const SizedBox(
            width: 5,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
              margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  series: <ChartSeries>[
                    LineSeries<ChartData, String>(
                        dataSource: [
                          ChartData('Sat', 35, Colors.red),
                          ChartData('Sun', 28, Colors.green),
                          ChartData('Mon', 34, Colors.blue),
                          ChartData('Wed', 32, Colors.pink),
                          ChartData('Thu', 32, Colors.pink),
                          ChartData('Fri', 40, Colors.black)
                        ],
                        // Bind the color for all the data points from the data source
                        pointColorMapper: (ChartData sales, _) =>
                            sales.segmentColor,
                        xValueMapper: (ChartData sales, _) => sales.year,
                        yValueMapper: (ChartData sales, _) => sales.sales),
                  ],
                  primaryYAxis: NumericAxis(labelFormat: '{value}K'))),
          Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Karnoz Dilow",
                            style: TextStyle(
                                color: CustomColor.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.location_on,
                                size: 15,
                                color: CustomColor.gray,
                              ),
                              Text(
                                "NewYork",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: CustomColor.gray,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: CustomColor.primaryColor),
                        child: IconButton(
                          icon: const Icon(
                            Icons.access_time,
                            color: CustomColor.white,
                            size: 25,
                          ),
                          onPressed: () {
                            Get.toNamed(Routes.profileSettingsScreen);
                          },
                        ),
                      )
                    ],
                  ))
            ],
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  decoration: const BoxDecoration(
                    color: CustomColor.searchbar
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Total Balance",
                        style: TextStyle(
                            color: CustomColor.gray,
                            fontSize: 15),
                      ),
                      Text(
                        "1000 000 USD",
                        style: TextStyle(
                            color: CustomColor.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),

                    ],
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: PrimaryButtonWidget(
                    title: "Deposit",
                    onPressed: () {
                      Get.toNamed(Routes.depositCardSelectScreen);
                    }),
              ),
              Expanded(
                child: PrimaryButtonWidget(
                    title: "Withdraw",
                    onPressed: () {
                      Get.toNamed(Routes.withdrawCardSelectScreen);
                    }),
              ),
            ],
          ),

        ],
      ),
    ));
  }
}

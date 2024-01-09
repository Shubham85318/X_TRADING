import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/dimensions.dart';
import 'package:xtrade/views/drawer/portfolio_screen/portfolio_tabs/closed_position.dart';
import 'package:xtrade/views/drawer/portfolio_screen/portfolio_tabs/open_position.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PortfolioScreenState createState() => _PortfolioScreenState();
}

class PortfolioThisTabs extends GetxController with GetSingleTickerProviderStateMixin {
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
          child: Text("OPEN POSITION"),
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
          child: Text("CLOSED POSITION"),
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

class _PortfolioScreenState extends State<PortfolioScreen> {
  // late List<SalesData> _chartData;

  @override
  void initState() {
    // TODO: implement initState
    // _chartData = getChartData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final PortfolioThisTabs tabs = Get.put(PortfolioThisTabs());
    return SafeArea(
        child: Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 150,
              color: CustomColor.primaryColor,
            ),
            Positioned(
              top: 50,
              left: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                        "Margin",
                        style: TextStyle(color: CustomColor.gray, fontSize: 14),
                      ),
                      Text(
                        "531.27",
                        style:
                            TextStyle(color: CustomColor.white, fontSize: 14),
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
            Positioned(
              bottom: -55,
              child: SizedBox(
                  width: 400,
                  height: 90,
                  child: Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          margin: const EdgeInsets.only(
                              right: 10, left: 10, top: 25),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Yesterday's Value",
                                    style: TextStyle(
                                        color: CustomColor.primaryColor),
                                  ),
                                  Text("Today's Value"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Text("100 000.00"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "90 000.00",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: CustomColor.primaryColor),
                                      ),
                                      Icon(
                                        FontAwesomeIcons.anglesDown,
                                        size: 10,
                                        color: Colors.red,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        FontAwesomeIcons.anglesUp,
                                        size: 10,
                                        color: Colors.green,
                                      ),
                                      Text(
                                        "100 000.00",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: CustomColor.primaryColor),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Divider(
                                height: 25,
                                thickness: 3,
                                color: CustomColor.primaryColor,
                              ),
                            ],
                          ),
                        )),
                  )),
            ),
          ],
        ),
        Container(
            margin: const EdgeInsets.only(top: 70, left: 10, right: 10),
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
            OpenPositionTab(),
            ClosedPositionTab(),
          ]),
        ),
      ],
    ));
  }
}

class ChartData {
  ChartData(this.year, this.sales, this.segmentColor);

  final String year;
  final double sales;
  final Color segmentColor;
}

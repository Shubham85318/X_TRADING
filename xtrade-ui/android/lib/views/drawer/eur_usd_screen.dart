import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import 'package:xtrade/routes/routes.dart';
import 'package:xtrade/utils/custom_color.dart';

class EurUsdScreen extends StatefulWidget {
  const EurUsdScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _EurUsdScreenState createState() => _EurUsdScreenState();
}

class _EurUsdScreenState extends State<EurUsdScreen> {
  late List<ChartSampleData> _chartData;

  // double _value = 1.23;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _chartData = getChatData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: CustomColor.white,
            appBar: AppBar(
              backgroundColor: CustomColor.white,
              centerTitle: true,
              title: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    text: "EURUSD",
                    style: TextStyle(
                      fontSize: 20,
                      color: CustomColor.gray,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '\nEuro to American Dollar',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ]),
              ),
              iconTheme: const IconThemeData(color: CustomColor.gray),
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.help,
                        color: CustomColor.gray,
                      ),
                      onPressed: () {
                        Get.toNamed(Routes.getHelpScreen);
                      },
                    )
                  ],
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  ChartSection(chartData: _chartData),
                  const VolumeSellBuySection(),
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: const [
                                Text(
                                  "Margin",
                                  style: TextStyle(color: CustomColor.gray),
                                ),
                                Text("531.84 USD"),
                                Text("99 468.73 USD"),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  "Spread",
                                  style: TextStyle(color: CustomColor.gray),
                                ),
                                Text("531.84 USD"),
                                Text("99 468.73 USD"),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  "Pip Value",
                                  style: TextStyle(color: CustomColor.gray),
                                ),
                                Text("531.84 USD"),
                                Text("99 468.73 USD"),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: const [
                                Text(
                                  "Commission",
                                  style: TextStyle(color: CustomColor.gray),
                                ),
                                Text("531.84 USD"),
                                Text("99 468.73 USD"),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  "Contract Value",
                                  style: TextStyle(color: CustomColor.gray),
                                ),
                                Text("531.84 USD"),
                                Text("99 468.73 USD"),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  "Daily Swap",
                                  style: TextStyle(color: CustomColor.gray),
                                ),
                                Text("531.84 USD"),
                                Text("99 468.73 USD"),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                    height: 40,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              "STATISTICS",
                              style: TextStyle(
                                  fontSize: 20, color: CustomColor.gray),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 10, left: 10, right: 10),
                          child: const Text(
                            "DAILY PRICE RANGE",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: const [
                                      Text(
                                        "1.12899",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        "Lowest",
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: CustomColor.gray),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: SfLinearGauge(
                                      minimum: 1.12899,
                                      maximum: 1.13444,
                                      showTicks: false,
                                      showLabels: false,
                                      markerPointers: const [
                                        LinearShapePointer(
                                          value: 1.13100,
                                          color: CustomColor.black,
                                          width: 13,
                                          height: 7,
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Text(
                                        "1.13444",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        "Lowest",
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: CustomColor.gray),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: const [
                                      Text(
                                        "37.90%",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        "Lowest",
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: CustomColor.gray),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 13,
                                  ),
                                  Expanded(
                                    child: SfLinearGauge(
                                      minimum: 1.12899,
                                      maximum: 1.1344,
                                      showTicks: false,
                                      showLabels: false,
                                      showAxisTrack: false,
                                      ranges: const [
                                        LinearGaugeRange(
                                          startValue: 1.12899,
                                          endValue: 1.13100,
                                          color: Colors.red,
                                        ),
                                        LinearGaugeRange(
                                          startValue: 1.13100,
                                          endValue: 1.13444,
                                          color: Colors.green,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 13,
                                  ),
                                  Column(
                                    children: const [
                                      Text(
                                        "62.10%",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        "Hight",
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: CustomColor.gray),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                    height: 40,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              "NEWS",
                              style: TextStyle(
                                  fontSize: 20, color: CustomColor.black),
                            ),
                          ],
                        ),
                        Row(
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
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }

  List<ChartSampleData> getChatData() {
    return <ChartSampleData>[
      ChartSampleData(DateTime(2022, 1, 1), 1.25, 1.30),
      ChartSampleData(DateTime(2022, 12, 1), 1.25, 1.32),
      ChartSampleData(DateTime(2022, 5, 1), 1.25, 1.32),
      ChartSampleData(DateTime(2022, 11, 1), 1.25, 1.32),
    ];
  }
}

class VolumeSellBuySection extends StatelessWidget {
  const VolumeSellBuySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 75,
          width: 110,
          child: ElevatedButton(
            onPressed: () {
              // Get.toNamed(Routes.eduusdScreen);
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("SELL"),
                Text("1.1321"),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Container(
              width: 110,
              decoration:
                  BoxDecoration(border: Border.all(color: CustomColor.gray)),
              child: Column(
                children: const [
                  Text(
                    "2.50",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text("Volume"),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  height: 25,
                  width: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      side: const BorderSide(width: 1, color: CustomColor.gray),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Icon(
                      Icons.remove,
                      size: 14,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 25,
                  width: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, backgroundColor: Colors.white,
                      side: const BorderSide(width: 1, color: CustomColor.gray),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Icon(Icons.add, size: 14),
                  ),
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          height: 75,
          width: 110,
          child: ElevatedButton(
            onPressed: () {
              // Get.toNamed(Routes.eduusdScreen);
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("BUY"),
                Text("1.1324"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ChartSection extends StatelessWidget {
  const ChartSection({
    Key? key,
    required List<ChartSampleData> chartData,
  })  : _chartData = chartData,
        super(key: key);

  final List<ChartSampleData> _chartData;

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      series: <RangeColumnSeries>[
        RangeColumnSeries<ChartSampleData, DateTime>(
          dataSource: _chartData,
          xValueMapper: (ChartSampleData data, _) => data.x,
          lowValueMapper: (ChartSampleData data, _) => data.low,
          highValueMapper: (ChartSampleData data, _) => data.high,
        )
      ],
      primaryXAxis: DateTimeAxis(
          edgeLabelPlacement: EdgeLabelPlacement.shift,
          dateFormat: DateFormat.MMM(),
          intervalType: DateTimeIntervalType.months),
      primaryYAxis: NumericAxis(
        opposedPosition: true,
        minimum: 1,
        maximum: 2,
        numberFormat: NumberFormat.simpleCurrency(decimalDigits: 4),
      ),
    );
  }
}

class ChartSampleData {
  final DateTime x;
  final double high;
  final double low;

  ChartSampleData(this.x, this.high, this.low);
}

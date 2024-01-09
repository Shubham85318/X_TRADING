import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtrade/routes/routes.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/custom_icons_icons.dart';
import 'package:xtrade/views/drawer/news_screen/news_screen.dart';
import 'package:xtrade/views/drawer/profile_screen/profile_screen.dart';
import 'package:xtrade/views/drawer/trading_screen/trading_screen.dart';
import 'package:xtrade/views/drawer/portfolio_screen/portfolio_screen.dart';

import 'home_screen_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  static const _navigationBarItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(CustomIcons.home),
      label: "HOME",
    ),
    BottomNavigationBarItem(icon: Icon(CustomIcons.trade), label: "TRADE"),
    BottomNavigationBarItem(
        icon: Icon(CustomIcons.portfolio), label: "PORTFOLIO"),
    BottomNavigationBarItem(icon: Icon(CustomIcons.profile), label: "PROFILE"),
    BottomNavigationBarItem(icon: Icon(CustomIcons.news), label: "NEWS"),
  ];

  static const appBars = [
    Text(
      "Home",
      style: TextStyle(color: CustomColor.gray),
    ),
    Text("Trading", style: TextStyle(color: CustomColor.gray),),
    Text("Portfolio", style: TextStyle(color: CustomColor.gray),),
    Text("Profile", style: TextStyle(color: CustomColor.gray),),
    Text("News", style: TextStyle(color: CustomColor.gray),),
  ];

  static const mainScreens = [
    HomeScreenTab(),
    TradingScreen(),
    PortfolioScreen(),
    ProfileScreen(),
    NewsScreen(),
  ];



  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.white,
        appBar: AppBar(
          centerTitle: true,
          title: appBars[_currentIndex],
          backgroundColor: CustomColor.white,
          iconTheme: const IconThemeData(color: CustomColor.gray),
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Get.toNamed(Routes.homeScreen);
            },
            icon: Image.asset(
              "assets/logo/logo_iphone.png",
              width: 41,
              height: 24,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Get.toNamed(Routes.moreScreen);
              },
              icon: const Icon(Icons.menu),
            ),
          ],
        ),
        body: SafeArea(
          child: mainScreens[_currentIndex]
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            currentIndex: _currentIndex,
            selectedItemColor: CustomColor.primaryColor,
            unselectedItemColor: CustomColor.gray,
            type: BottomNavigationBarType.fixed,
            unselectedFontSize: 11,
            selectedFontSize: 11,
            elevation: 2,
            unselectedLabelStyle: const TextStyle(fontSize: 8),
            selectedLabelStyle: const TextStyle(fontSize: 8),
            items: _navigationBarItems),
      ),
    );
  }
}

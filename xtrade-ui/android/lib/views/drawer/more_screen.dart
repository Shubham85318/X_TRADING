import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtrade/routes/routes.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/custom_icons_icons.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: CustomColor.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("More", style: TextStyle(
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
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Drawer(
          elevation: 0,
          backgroundColor: CustomColor.white,
          child: ListView(
            children: [
              ListTile(
                leading: const Icon(CustomIcons.bookReader),
                title: const Text('Learning', style: TextStyle(fontWeight: FontWeight.bold),),
                onTap: () { Get.toNamed(Routes.learningScreen);},
              ),
              const Divider(thickness: 1, height: 0,),
              ListTile(
                leading: const Icon(CustomIcons.calendar),
                title: const Text('Calender', style: TextStyle(fontWeight: FontWeight.bold),),
                onTap: (){Get.toNamed(Routes.calendarScreen);},
              ),
              const Divider(thickness: 1, height: 0,),
              ListTile(
                leading: const Icon(CustomIcons.compass),
                title: const Text('Discover', style: TextStyle(fontWeight: FontWeight.bold),),
                onTap: () {Get.toNamed(Routes.discoverScreen);},
              ),
              const Divider(thickness: 1, height: 0,),
              ListTile(
                leading: const Icon(CustomIcons.profile),
                title: const Text('Profile Settings', style: TextStyle(fontWeight: FontWeight.bold),),
                onTap: () {Get.toNamed(Routes.profileSettingsScreen);},
              ),
              const Divider(thickness: 1, height: 0,),
              ListTile(
                leading: const Icon(CustomIcons.wallet),
                title: const Text('Wallet', style: TextStyle(fontWeight: FontWeight.bold),),
                onTap: () {Get.toNamed(Routes.walletScreen);},
              ),
              const Divider(thickness: 1, height: 0,),
              ListTile(
                leading: const Icon(CustomIcons.settings),
                title: const Text('Settings', style: TextStyle(fontWeight: FontWeight.bold),),
                onTap: () {Get.toNamed(Routes.profileSettingsScreen);},
              ),
              const Divider(thickness: 1, height: 0,),
              ListTile(
                leading: const Icon(CustomIcons.help),
                title: const Text('Help Center', style: TextStyle(fontWeight: FontWeight.bold),),
                onTap: () {Get.toNamed(Routes.helpScreen);},
              ),
              const Divider(thickness: 1, height: 0,),
              ListTile(
                leading: const Icon(CustomIcons.books),
                title: const Text('About', style: TextStyle(fontWeight: FontWeight.bold),),
                onTap: () {Get.toNamed(Routes.aboutAppScreen);},
              ),
              const Divider(thickness: 1, height: 0,),
              ListTile(
                leading: const Icon(CustomIcons.logout),
                title: const Text('Sing out', style: TextStyle(fontWeight: FontWeight.bold),),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    ),);
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtrade/routes/routes.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/strings.dart';
import 'package:xtrade/data/get_help_model.dart';

class GetHelpScreen extends StatefulWidget {

  const GetHelpScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _GetHelpScreenState createState() => _GetHelpScreenState();
}

class _GetHelpScreenState extends State<GetHelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          Strings.getHelp,
          style: const TextStyle(
            color: CustomColor.gray,
          ),
        ),
        backgroundColor: CustomColor.white,
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
                  Icons.search_sharp,
                  color: CustomColor.gray,
                ),
                onPressed: () {
                  // Get.toNamed(Routes.getHelpScreen);
                },
              )
            ],
          )
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: getHelpContents.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  ListTile(
                    title: Text(getHelpContents[index].title),
                    subtitle: Text(getHelpContents[index].description),
                  ),
                  const Divider(
                    color: CustomColor.gray,
                  ),
                ],
              );
            }),
      ),
      floatingActionButton: SizedBox(
          height: 80,
          width: 80,
          child: FittedBox(
            child: FloatingActionButton(
              backgroundColor: CustomColor.primaryColor,
              child: Stack(
                children: [
                  Positioned(
                      top: 12,
                      left: 14,
                      child: Image.asset(
                          "assets/icons/message_icon2.png",
                      width: 20, height: 20,)),
                  Positioned(
                      bottom: 14,
                      left: 21,
                      child: Image.asset(
                          "assets/icons/message_icon1.png",
                      width: 20, height: 20,)),
                ],
              ),
              onPressed: (){
                Get.toNamed(Routes.helpScreen);
              },
            ),
          )

      ),
    );
  }

}

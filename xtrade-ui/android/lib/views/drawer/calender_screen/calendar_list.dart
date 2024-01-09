import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:xtrade/data/list_model.dart';
import 'package:xtrade/routes/routes.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/dimensions.dart';

class CalenderList extends StatefulWidget {
  const CalenderList({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CalenderListState createState() => _CalenderListState();
}

class _CalenderListState extends State<CalenderList> {
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
          margin: const EdgeInsets.only(left: 10, right: 5),
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
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w700),
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
                        color:
                            mainList[index].icon == FontAwesomeIcons.anglesDown
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
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.eduUsdScreen);
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: CustomColor.primaryColor,
                  backgroundColor: CustomColor.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: const BorderSide(
                          width: 2, color: CustomColor.primaryColor)),
                ),
                child: const Text("Renew"),
              )
            ],
          ),
        );
      },
    );
  }
}

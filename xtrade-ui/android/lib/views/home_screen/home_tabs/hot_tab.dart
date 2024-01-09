import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xtrade/data/list_model.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/dimensions.dart';

class HotTab extends StatefulWidget {
  const HotTab({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HotTabState createState() => _HotTabState();
}

class _HotTabState extends State<HotTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: getHotModel.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.only(left: 10, right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(getHotModel[index].image),
                  SizedBox(
                    width: Dimensions.widthSize,
                  ),
                  Text(
                    getHotModel[index].name,
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
                        getHotModel[index].icon,
                        size: 10,
                        color: getHotModel[index].icon ==
                                FontAwesomeIcons.anglesDown
                            ? Colors.red
                            : Colors.green,
                      ),
                      SizedBox(
                        width: Dimensions.widthSize * 1,
                      ),
                      Text(
                        getHotModel[index].persentage,
                        style: TextStyle(
                            color: getHotModel[index].icon ==
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
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: CustomColor.primaryColor,
                  backgroundColor: CustomColor.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: const BorderSide(
                          width: 2, color: CustomColor.primaryColor)),
                ),
                child: Text(getHotModel[index].button),
              )
            ],
          ),
        );
      },
    );
  }
}

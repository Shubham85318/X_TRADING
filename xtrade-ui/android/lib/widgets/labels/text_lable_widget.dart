import 'package:flutter/material.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/dimensions.dart';

// ignore: must_be_immutable
class TextLabelWidget extends StatelessWidget {

  String text;

  TextLabelWidget({Key? key, required this.text}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      width: double.infinity,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: CustomColor.gray,
            fontSize: Dimensions.largeTextSize,
          ),
        ),
      ),
    );
  }
}

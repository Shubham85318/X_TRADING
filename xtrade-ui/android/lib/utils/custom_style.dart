import 'package:flutter/material.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'dimensions.dart';

class CustomStyle {
  static var textStyle = TextStyle(
      color: CustomColor.black,
      fontSize: Dimensions.largeTextSize,
      fontWeight: FontWeight.w300
  );

  static var textStyle2 = TextStyle(
    color: CustomColor.gray,
    fontSize: Dimensions.smallTextSize,
  );

  static var normalTextStyle = const TextStyle(
    color: CustomColor.gray,
  );

  static var normalBoldTextStyle = const TextStyle(
    color: CustomColor.black,
    fontSize: 20
  );
  static var textButtonStyle = TextButton.styleFrom(
    elevation: 0,
    backgroundColor: CustomColor.primaryColor,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5))),
  );

  static var hintTextStyle = TextStyle(
      fontSize: Dimensions.defaultTextSize,
      fontWeight: FontWeight.w400
  );

  static var secondaryTextButtonStyle = TextButton.styleFrom(
      backgroundColor: CustomColor.white,
      elevation: 0,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5))),
      side: const BorderSide(color: CustomColor.primaryColor));
}



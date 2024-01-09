import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/custom_style.dart';
import 'package:xtrade/utils/dimensions.dart';
import 'package:xtrade/utils/strings.dart';

class CardNumberTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool? readOnly;

  const CardNumberTextFieldWidget(
      {Key? key,
        required this.controller,
        required this.hintText,
        this.keyboardType,
        this.readOnly = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      // width: double.infinity,
      child: TextFormField(
        readOnly: readOnly!,
        style: CustomStyle.textStyle,
        controller: controller,
        keyboardType: keyboardType,
        validator: (String? value) {
          if (value!.isEmpty) {
            return null;
          } else {
            return Strings.pleaseFillOutTheField;
          }
        },
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
              borderSide: const BorderSide(
                  color: CustomColor.white, width: 0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
              borderSide: const BorderSide(
                  color: CustomColor.white, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
              // borderSide: const BorderSide(
              //     color: CustomColor.primaryColor, width: 0.5),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
              borderSide: const BorderSide(color: Colors.red, width: 0.5),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
              borderSide: const BorderSide(color: Colors.red, width: 0.5),
            ),
            filled: true,
            fillColor: CustomColor.secondaryTextFormFieldColor,
            prefixIcon: const Padding(
              padding: EdgeInsets.all(0.0),
              child: Image(image: AssetImage("assets/logo/visa_small.png"))// icon is 48px widget.
            ),
            suffixIcon: const Padding(
              padding: EdgeInsets.all(0.0),
              child: Icon(
                FontAwesomeIcons.pencil,
                color: Colors.grey,
                size: 20,
              ), // icon is 48px widget.
            ),
            contentPadding:
            EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
            hintText: hintText,
            hintStyle: CustomStyle.hintTextStyle),
      ),
    );
  }
}

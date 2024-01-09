import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/custom_style.dart';
import 'package:xtrade/utils/dimensions.dart';
import 'package:xtrade/utils/strings.dart';

class InputTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool? readOnly;

  const InputTextFieldWidget(
      {Key? key,
      required this.controller,
      required this.hintText,
      this.keyboardType,
      this.readOnly = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                  borderSide:
                  const BorderSide(color: CustomColor.gray, width: 0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
                  borderSide:
                  const BorderSide(color: CustomColor.gray, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
                  borderSide: const BorderSide(
                      color: CustomColor.gray, width: 0.5),
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
                fillColor: CustomColor.white,
                contentPadding:
                EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                hintText: hintText,
                hintStyle: CustomStyle.hintTextStyle),
          ),
        )
        // CustomSize.heightBetween()
      ],
    );
  }
}

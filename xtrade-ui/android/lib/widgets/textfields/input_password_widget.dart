import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/custom_style.dart';
import 'package:xtrade/utils/dimensions.dart';
import 'package:xtrade/utils/strings.dart';

class InputPasswordWidget extends StatefulWidget {

  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;

  const InputPasswordWidget({Key? key, required this.controller, required this.hintText, this.keyboardType}) : super(key: key);



  @override
  // ignore: library_private_types_in_public_api
  _InputPasswordWidgetState createState() => _InputPasswordWidgetState();
}

class _InputPasswordWidgetState extends State<InputPasswordWidget> {
  bool isVisibility = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      width: double.infinity,
      child: TextFormField(
        readOnly: false,
        style: CustomStyle.textStyle,
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        validator: (String? value){
          if(value!.isEmpty){
            return null;
          }else{
            return Strings.pleaseFillOutTheField;
          }
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
            borderSide: const BorderSide(
                color: CustomColor.gray, width: 0
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
            borderSide: const BorderSide(color: CustomColor.gray, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
            borderSide: const BorderSide(color: CustomColor.gray, width: 0.5),
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
          contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
          hintText: widget.hintText,
          hintStyle: CustomStyle.hintTextStyle,
          suffixIcon: IconButton(
            icon: Icon(
              isVisibility ? Icons.visibility_off : Icons.visibility,
            ),
            color: CustomColor.primaryColor,
            onPressed: () {
              setState(() {
                isVisibility = !isVisibility;
              });
            },
          ),
        ),
        obscureText: isVisibility,
      ),
    );
  }
}

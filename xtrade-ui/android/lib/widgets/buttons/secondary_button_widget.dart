import 'package:flutter/material.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/custom_style.dart';
import 'package:xtrade/utils/dimensions.dart';

class SecondaryButtonWidget extends StatelessWidget {

  final String title;
  final VoidCallback onPressed;

  const SecondaryButtonWidget({Key? key, required this.title, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(right: 20, left: 20 , top: 10),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: CustomStyle.secondaryTextButtonStyle,
        child: Text(
          title,
          style: TextStyle(
              color: CustomColor.primaryColor,
              fontSize: Dimensions.largeTextSize,
              fontWeight: FontWeight.w600
          ),
        ),
      ),
    );

  }
}

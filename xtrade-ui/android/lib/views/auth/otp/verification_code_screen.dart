import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:xtrade/routes/routes.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/dimensions.dart';
import 'package:xtrade/utils/strings.dart';
import 'package:xtrade/widgets/buttons/primary_button_widget.dart';
import 'package:xtrade/widgets/size_box/custom_size.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            Strings.otpTitle,
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
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: ListView(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: [
                  _upperSection(context),
                  SizedBox(height: 48.h),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: _otpMiddleSection(context),
                  ),
                  CustomSize.heightBetween(),
                  _lowerSection(context),
                ],
              ),
            ),
          ),
        ));
  }

  //icon and OTP text label
  _upperSection(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(0),
          decoration: const BoxDecoration(
            color: CustomColor.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Image.asset(
            "assets/images/otp_logo.png",
          ),
        ),
        SizedBox(
          height: Dimensions.heightSize * 3,
        ),
        Text(
          Strings.otpOnYourNumber,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: CustomColor.gray, fontSize: Dimensions.smallTextSize + 2),
        )
      ],
    );
  }

  //Six OTP TextField together
  _otpMiddleSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _textFieldOTP(context),
        _textFieldOTP(context),
        _textFieldOTP(context),
        _textFieldOTP(context),
        _textFieldOTP(context),
        _textFieldOTP(context)
      ],
    );
  }

  // resend code and next button
  _lowerSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Strings.didNtReceiveAOtp,
              style: TextStyle(
                  color: CustomColor.gray,
                  fontSize: Dimensions.smallTextSize + 2),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Text(
                Strings.resendOtp,
                style: TextStyle(
                    color: CustomColor.gray,
                    fontSize: Dimensions.smallTextSize + 2,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        SizedBox(
          height: Dimensions.heightSize * 2,
        ),
        PrimaryButtonWidget(
          title: Strings.next,
          onPressed: () {
            Get.toNamed(Routes.resetPasswordScreen);
          },
        )
      ],
    );
  }

  //TextField of OTP
  _textFieldOTP(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: AspectRatio(
        aspectRatio: 0.7,
        child: TextField(
          // autofocus: true,
          onChanged: (value) {},
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: const Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: CustomColor.gray),
                borderRadius: BorderRadius.circular(5.0)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: CustomColor.gray),
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
      ),
    );
  }
}

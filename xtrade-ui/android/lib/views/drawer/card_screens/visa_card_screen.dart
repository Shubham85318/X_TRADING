import 'package:flutter/material.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/dimensions.dart';
import 'package:xtrade/utils/strings.dart';
import 'package:xtrade/widgets/buttons/primary_button_widget.dart';
import 'package:xtrade/widgets/labels/text_lable_widget.dart';
import 'package:xtrade/widgets/size_box/custom_size.dart';
import 'package:xtrade/widgets/textfields/card_number_textfield_widget.dart';
import 'package:xtrade/widgets/textfields/secondary_textfield_widget.dart';
import 'package:xtrade/widgets/textfields/small_textfield_widget.dart';

class VisaCardScreen extends StatefulWidget {
  const VisaCardScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _VisaCardScreenState createState() => _VisaCardScreenState();
}

class _VisaCardScreenState extends State<VisaCardScreen> {
  final formKey = GlobalKey<FormState>();
  bool value = false;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: CustomColor.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Visa Card",
          style: TextStyle(color: CustomColor.gray),
        ),
        elevation: 1,
        backgroundColor: CustomColor.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: CustomColor.gray,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: [
              // SizedBox(
              //   height: Dimensions.heightSize,
              // ),
              _inputWidget(context),
              CustomSize.heightBetween(),
              // _buttonWidget(context),
            ],
          ),
        ),
      ),
    ));
  }

  _inputWidget(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextLabelWidget(
            text: "Name of Card",
          ),
          SizedBox(
            height: Dimensions.heightSize * 0.5,
          ),
          SecondaryTextFieldWidget(
            controller: nameController,
            hintText: Strings.enterFullName,
          ),
          SizedBox(
            height: Dimensions.heightSize * 1,
          ),
          TextLabelWidget(
            text: "Card Number",
          ),
          SizedBox(
            height: Dimensions.heightSize * 0.5,
          ),
          CardNumberTextFieldWidget(
            controller: emailController,
            hintText: Strings.enterEmail,
          ),
          SizedBox(
            height: Dimensions.heightSize * 1.5,
          ),
          _expiryWidget(context),
          _zipWidget(context),
          SizedBox(
            height: Dimensions.heightSize * 1.5,
          ),
          PrimaryButtonWidget(
              title: "Add Card",
              onPressed: () {
                // Get.toNamed(Routes.emailVerificationScreen);
              }),
        ],
      ),
    );
  }

  _expiryWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: Text(
            "Expiry Date",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: CustomColor.gray,
              fontSize: Dimensions.largeTextSize,
            ),
          ),
        ),
        SizedBox(
          height: Dimensions.heightSize * 0.5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SmallTextFieldWidget(
                marginLeft: 20,
                marginRight: 5.0,
                controller: emailController,
                hintText: "Month",
              ),
            ),
            Expanded(
              child: SmallTextFieldWidget(
                marginLeft: 0.0,
                marginRight: 20.0,
                controller: emailController,
                hintText: "Year",
              ),
            ),
          ],
        ),

      ],
    );
  }

  _zipWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: Dimensions.heightSize * 1,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: Text(
            "CVV/CVC2",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: CustomColor.gray,
              fontSize: Dimensions.largeTextSize,
            ),
          ),
        ),
        SizedBox(
          height: Dimensions.heightSize * 0.3,
        ),
        SizedBox(
          width: 200,
          child: SmallTextFieldWidget(
            marginLeft: 20.0,
            marginRight: 10.0,
            controller: emailController,
            hintText: "Enter",
          ),
        )
      ],
    );
  }
}

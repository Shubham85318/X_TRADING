import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtrade/routes/routes.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/dimensions.dart';
import 'package:xtrade/utils/strings.dart';
import 'package:xtrade/widgets/buttons/primary_button_widget.dart';
import 'package:xtrade/widgets/textfields/input_password_widget.dart';
import 'package:xtrade/widgets/labels/text_lable_widget.dart';
import 'package:xtrade/widgets/size_box/custom_size.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final formKey = GlobalKey<FormState>();
  bool value = false;

  final passwordController = TextEditingController();


  @override
  void dispose() {
    // TODO: implement dispose
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          Strings.resetPassword,
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
          child: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: [
              _inputWidget(context),
              CustomSize.heightBetween(),
              _buttonWidget(context)
            ],
          ),
        ),
      ),
    );
  }

  _inputWidget(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          //new Password
          TextLabelWidget(
            text: Strings.newPass,
          ),
          SizedBox(
            height: Dimensions.heightSize,
          ),
          InputPasswordWidget(
            controller: passwordController,
            hintText: Strings.typeNewPass,
          ),
          SizedBox(
            height: Dimensions.heightSize * 0.2,
          ),

          //retype password
          TextLabelWidget(
            text: Strings.retypeNewPassLabel,
          ),
          SizedBox(
            height: Dimensions.heightSize,
          ),
          InputPasswordWidget(
            controller: passwordController,
            hintText: Strings.retypeNewPass,
          ),

          //confirm new password
          TextLabelWidget(
            text: Strings.confirmNewPassLabel,
          ),
          SizedBox(
            height: Dimensions.heightSize,
          ),
          InputPasswordWidget(
            controller: passwordController,
            hintText: Strings.confirmNewPass,
          ),
        ],
      ),
    );
  }

  //Adding Button in Sign In Screen
  _buttonWidget(BuildContext context) {
    return Column(
      children: [
        PrimaryButtonWidget(title: Strings.resetPassword, onPressed: () {
          Get.toNamed(Routes.signInScreen);
        }),
      ],
    );
  }
}

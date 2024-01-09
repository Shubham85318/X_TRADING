import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:xtrade/routes/routes.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/dimensions.dart';
import 'package:xtrade/utils/strings.dart';
import 'package:xtrade/widgets/buttons/primary_button_widget.dart';
import 'package:xtrade/widgets/textfields//input_password_widget.dart';
import 'package:xtrade/widgets/textfields/input_text_field_widget.dart';
import 'package:xtrade/widgets/labels/text_lable_widget.dart';
import 'package:xtrade/widgets/size_box/custom_size.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  bool value = false;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
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
            Strings.createAccount,
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
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.help,
                    color: CustomColor.gray,
                  ),
                  onPressed: () {
                    Get.toNamed(Routes.getHelpScreen);
                  },
                )
              ],
            )
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: ListView(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: [
                  _inputWidget(context),
                  _buttonWidget(context),
                  CustomSize.heightBetween(),
                  _bottomSectionWidget(context)
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
        children: [
          TextLabelWidget(
            text: Strings.name,
          ),
          SizedBox(
            height: Dimensions.heightSize,
          ),
          InputTextFieldWidget(
            controller: nameController,
            hintText: Strings.enterFullName,
          ),
          TextLabelWidget(
            text: Strings.email,
          ),
          SizedBox(
            height: Dimensions.heightSize,
          ),
          InputTextFieldWidget(
            controller: emailController,
            hintText: Strings.enterEmail,
          ),
          SizedBox(
            height: Dimensions.heightSize * 0.2,
          ),
          TextLabelWidget(
            text: Strings.phoneNumber,
          ),
          SizedBox(
            height: Dimensions.heightSize,
          ),
          _phoneNumberWidget(context),
          SizedBox(
            height: Dimensions.heightSize,
          ),
          TextLabelWidget(
            text: Strings.password,
          ),
          SizedBox(
            height: Dimensions.heightSize,
          ),
          InputPasswordWidget(
            controller: passwordController,
            hintText: Strings.enterPassword,
          ),
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
          Container(
            margin: const EdgeInsets.only(left: 6, right: 20),
            width: double.infinity,
            child: Row(
              children: [
                Checkbox(
                  value: value,
                  activeColor: CustomColor.white,
                  checkColor: CustomColor.gray,
                  side: const BorderSide(
                    color: CustomColor.gray,
                  ),
                  onChanged: (bool? value) {
                    setState(() {
                      this.value = value!;
                    });
                  },
                ),
                Flexible(
                  child: Text(
                    Strings.privacyPolicy,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: CustomColor.gray, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  _phoneNumberWidget(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      width: double.infinity,
      child: TextFormField(
          keyboardType: TextInputType.number,
          textAlign: TextAlign.start,
          style: const TextStyle(
            fontSize: 14,
          ),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: CustomColor.primaryColor),
              borderRadius: BorderRadius.circular(5.0),
            ),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                borderSide: BorderSide(color: CustomColor.primaryColor)),
            hintText: Strings.enterNumber,
            prefixIcon: CountryCodePicker(
              initialSelection: Strings.bangladesh,
            ),
          )),
    );
  }

  //Adding Button in Sign Up Screen
  _buttonWidget(BuildContext context) {
    return Column(
      children: [
        PrimaryButtonWidget(
            title: Strings.sighUp,
            onPressed: () {
              Get.toNamed(Routes.emailVerificationScreen);
            }),
      ],
    );
  }

  _bottomSectionWidget(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Strings.alreadyHaveAccount,
              style: const TextStyle(color: CustomColor.gray),
            ),
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Text(
                Strings.sighIn,
                style: TextStyle(color: CustomColor.gray),
              ),
            )
          ],
        ),
        SizedBox(
          height: Dimensions.heightSize,
        ),
        Row(children: <Widget>[
          Expanded(
            child: Container(
                margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: const Divider(
                  color: CustomColor.gray,
                  height: 50,
                )),
          ),
          Text(
            "or",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: CustomColor.gray,
                fontSize: Dimensions.smallTextSize,
                fontWeight: FontWeight.w100),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: const Divider(
                color: CustomColor.gray,
                height: 50,
              ),
            ),
          ),
        ]),
        SizedBox(
          height: Dimensions.heightSize,
        ),
        // ignore: sized_box_for_whitespace
        Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: CustomColor.gray,
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.google,
                        color: CustomColor.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: CustomColor.gray,
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.facebookF,
                        color: CustomColor.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: CustomColor.gray,
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.apple,
                        color: CustomColor.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ))
      ],
    );
  }
}

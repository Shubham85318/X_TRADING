import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:xtrade/routes/routes.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/custom_style.dart';
import 'package:xtrade/utils/dimensions.dart';
import 'package:xtrade/utils/strings.dart';
import 'package:xtrade/widgets/buttons/primary_button_widget.dart';
import 'package:xtrade/widgets/textfields//input_password_widget.dart';
import 'package:xtrade/widgets/textfields//input_text_field_widget.dart';
import 'package:xtrade/widgets/labels/text_lable_widget.dart';
import 'package:xtrade/widgets/size_box/custom_size.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final formKey = GlobalKey<FormState>();
  bool value = false;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
          backgroundColor: CustomColor.white,
          iconTheme: const IconThemeData(color: CustomColor.gray),
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Get.back();
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
                  _headerWidget(context),
                  CustomSize.heightBetween(),
                  _inputWidget(context),
                  CustomSize.heightBetween(),
                  _buttonWidget(context),
                  _bottomSectionWidget(context),
                  CustomSize.heightBetween(),
                ],
              ),
            ),
          ),
        ));
  }

  //Here Implement Logo of the xTrade
  _headerWidget(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(0),
          decoration: const BoxDecoration(
            color: CustomColor.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Image.asset(
            "assets/logo/logo_iphone.png",
            cacheWidth: 100,
            cacheHeight: 171,
          ),
        )
      ],
    );
  }

  //implemented TextFromFields and Remember me with Forgot password
  _inputWidget(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextLabelWidget(
            text: Strings.emailOrUserId,
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
            text: Strings.password,
          ),
          SizedBox(
            height: Dimensions.heightSize,
          ),
          InputPasswordWidget(
            controller: passwordController,
            hintText: Strings.enterPassword,
          ),
          Container(
              height: 25,
              margin: const EdgeInsets.only(left: 6, right: 20),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: value,
                        activeColor: CustomColor.white,
                        checkColor: CustomColor.gray,
                        side: const BorderSide(
                          color: CustomColor.gray,
                          width: 1,
                        ),
                        onChanged: (bool? value) {
                          setState(() {
                            this.value = value!;
                          });
                        },
                      ),
                      Text(
                        Strings.rememberMe,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          color: CustomColor.gray,
                        ),
                      ),
                    ],
                  ),
                  //forgot password text section
                  GestureDetector(
                    onTap: () {
                      _forgotPasswordScreen(context);
                    },
                    child: Text(
                      Strings.forgetPass,
                      style: const TextStyle(color: CustomColor.primaryColor),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }

  //Adding Button in Sign In Screen
  _buttonWidget(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 35,
          margin: const EdgeInsets.all(20),
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Get.toNamed(Routes.homeScreen);
            },
            style: CustomStyle.textButtonStyle,
            child: Text(
              Strings.sighIn,
              style: TextStyle(
                  color: Colors.white.withOpacity(.8),
                  fontSize: Dimensions.largeTextSize,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
        ),
        // PrimaryButtonWidget(title: Strings.sighIn, onPressed: (){Get.to(Routes.homeScreen);}),
      ],
    );
  }

  // Bottom section of Sign In Screen here implemented ( some texts, and icons like Google, facebook, Apple)
  _bottomSectionWidget(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Strings.nextToxTrade,
              style: const TextStyle(color: CustomColor.gray),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.signUpScreen);
              },
              child: const Text(
                Strings.sighUp,
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
                  color: Colors.grey,
                  height: 50,
                )),
          ),
        ]),
        SizedBox(
          height: Dimensions.heightSize,
        ),
        // ignore: sized_box_for_whitespace
        Container(
          // height: 20,
          // margin: const EdgeInsets.only(left: 20, right: 20),
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

  //Forgot Password Screen
  _forgotPasswordScreen(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: Material(
              type: MaterialType.transparency,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CustomColor.white,
                ),
                padding: const EdgeInsets.all(10),
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.85,
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.65,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: Dimensions.heightSize * 1.5,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: CustomColor.white,
                        // borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Image.asset(
                        "assets/images/forgetpass.png",
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.heightSize * 1.5,
                    ),
                    Text(
                      Strings.forgotPass,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: CustomColor.primaryColor,
                          fontSize: Dimensions.smallTextSize + 2,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: Dimensions.heightSize * 1.5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      width: double.infinity,
                      child: Text(
                        Strings.resetYourPass,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: CustomColor.gray,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.heightSize * 3,
                    ),
                    Container(
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
                              borderSide:
                              const BorderSide(color: CustomColor.gray),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            focusedBorder: const OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                                borderSide:
                                BorderSide(color: CustomColor.gray)),
                            // border: InputBorder.none,
                            hintText: Strings.enterNumber,
                            prefixIcon: CountryCodePicker(
                              initialSelection: Strings.bangladesh,
                            ),
                          )),
                    ),
                    PrimaryButtonWidget(
                      title: Strings.submit,
                      onPressed: () {
                        Get.toNamed(Routes.verificationCodeScreen);
                      },
                    ),

                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Text(
                        Strings.backToSighIn,
                        style: const TextStyle(color: CustomColor.gray),
                        // style: CustomStyle.textStyle2
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}

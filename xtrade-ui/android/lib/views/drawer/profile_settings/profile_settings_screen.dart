import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/dimensions.dart';
import 'package:xtrade/utils/strings.dart';
import 'package:xtrade/widgets/buttons/primary_button_widget.dart';
import 'package:xtrade/widgets/contact_number_widget.dart';
import 'package:xtrade/widgets/dateofbirth_widget.dart';
import 'package:xtrade/widgets/gender_widget.dart';
import 'package:xtrade/widgets/labels/text_lable_widget.dart';
import 'package:xtrade/widgets/size_box/custom_size.dart';
import 'package:xtrade/widgets/textfields/secondary_textfield_widget.dart';

class ProfileSettingsScreen extends StatefulWidget {
  const ProfileSettingsScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProfileSettingsScreenState createState() => _ProfileSettingsScreenState();
}

class _ProfileSettingsScreenState extends State<ProfileSettingsScreen> {
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
          "Profile Settings",
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
              CircleAvatar(
                radius: 32,
                backgroundColor: CustomColor.gray,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      const AssetImage("assets/images/profile_picture.png"),
                  child: Stack(children: const [
                    Align(
                        alignment: Alignment.bottomRight,
                        child: CircleAvatar(
                          radius: 9,
                          backgroundColor: CustomColor.white,
                          child: CircleAvatar(
                            radius: 8,
                            backgroundColor: CustomColor.primaryColor,
                            child: Icon(
                              Icons.camera_alt_rounded,
                              color: CustomColor.white,
                              size: 10,
                            ),
                          ),
                        )),
                  ]),
                ),
              ),
              SizedBox(
                height: Dimensions.heightSize,
              ),
              _inputWidget(context),
              CustomSize.heightBetween(),
              _bottomSectionWidget(context),
              _buttonWidget(context),
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
            height: Dimensions.heightSize * 0.5,
          ),
          SecondaryTextFieldWidget(
            controller: nameController,
            hintText: Strings.enterFullName,
          ),
          TextLabelWidget(
            text: Strings.email,
          ),
          SizedBox(
            height: Dimensions.heightSize * 0.5,
          ),
          SecondaryTextFieldWidget(
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
            height: Dimensions.heightSize * 0.5,
          ),
          const ContactNumberWidget(
            fillColor: CustomColor.secondaryTextFormFieldColor,
          ),
          SizedBox(
            height: Dimensions.heightSize,
          ),
          TextLabelWidget(
            text: "Address",
          ),
          SizedBox(
            height: Dimensions.heightSize * 0.5,
          ),
          SecondaryTextFieldWidget(
            controller: emailController,
            hintText: "E.g : State, City, Zip Code, Country",
          ),
          Row(
            children: const [
              Expanded(
                child: GenderWidget(),
              ),
              Expanded(
                child: DateOfBirthWidget(),
              )
            ],
          ),
          SizedBox(
            height: Dimensions.heightSize * 0.5,
          ),
        ],
      ),
    );
  }

  //Adding Button in Sign Up Screen
  _buttonWidget(BuildContext context) {
    return Column(
      children: [
        PrimaryButtonWidget(
            title: "Update",
            onPressed: () {
              Get.back();
            }),
      ],
    );
  }

  _bottomSectionWidget(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Dimensions.heightSize * 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Connect with Social Media",
              style: TextStyle(color: CustomColor.gray),
            ),
          ],
        ),
        SizedBox(
          height: Dimensions.heightSize,
        ),
        SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: IconButton(
                    icon: const Icon(
                      FontAwesomeIcons.squareFacebook,
                      color: Colors.indigo,
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: IconButton(
                    icon: const Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.deepPurple,
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: IconButton(
                    icon: const Icon(
                      FontAwesomeIcons.squareTwitter,
                      color: Colors.blueAccent,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ))
      ],
    );
  }
}

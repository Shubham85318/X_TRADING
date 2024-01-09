import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/dimensions.dart';
import 'package:xtrade/utils/strings.dart';
import 'package:xtrade/views/drawer/card_screens/card_screen.dart';
import 'package:xtrade/widgets/buttons/primary_button_widget.dart';
import 'package:xtrade/widgets/contact_number_widget.dart';
import 'package:xtrade/widgets/currency_list_widget.dart';
import 'package:xtrade/widgets/dateofbirth_widget.dart';
import 'package:xtrade/widgets/gender_widget.dart';
import 'package:xtrade/widgets/labels/text_lable_widget.dart';
import 'package:xtrade/widgets/size_box/custom_size.dart';
import 'package:currency_picker/currency_picker.dart';
import 'package:xtrade/widgets/textfields/secondary_textfield_widget.dart';
import 'package:xtrade/widgets/textfields/small_textfield_widget.dart';

//ignore: must_be_immutable
class WalletSettingsScreen extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  bool value = false;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  WalletSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Wallet Settings",
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
                SizedBox(
                  height: Dimensions.heightSize,
                ),
                _inputWidget(context),
                CustomSize.heightBetween(),
                _buttonWidget(context),
              ],
            ),
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
          SizedBox(
            height: Dimensions.heightSize * 1,
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
            height: Dimensions.heightSize * 1,
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
            height: Dimensions.heightSize * 1.5,
          ),
          Row(
            children: [
              Expanded(
                child: _addressWidget(context),
              ),
              Expanded(
                child: _zipWidget(context),
              )
            ],
          ),
          SizedBox(
            height: Dimensions.heightSize * 1.5,
          ),
          Row(
            children: [
              Expanded(
                child: _cityWidget(context),
              ),
              Expanded(
                child: _countryWidget(context),
              )
            ],
          ),
          SizedBox(
            height: Dimensions.heightSize * 1,
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
            height: Dimensions.heightSize * 1.5,
          ),
          Row(
            children: [
              const Expanded(
                child: CurrencyListWidget(),
              ),
              Expanded(
                child: _addCardWidget(context),
              )
            ],
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

  _addressWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: Text(
            "Address",
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
        SmallTextFieldWidget(
          marginLeft: 20.0,
          marginRight: 9.0,
          controller: emailController,
          hintText: "E.g : State, City, Zip Code, Country",
        ),
      ],
    );
  }

  _zipWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 2),
          child: Text(
            "Zip",
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
        SmallTextFieldWidget(
          marginLeft: 0.0,
          marginRight: 20.0,
          controller: emailController,
          hintText: "Enter",
        ),
      ],
    );
  }

  _cityWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: Text(
            "City",
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
        SizedBox(
          height: 60,
          child: SmallTextFieldWidget(
            marginLeft: 20.0,
            marginRight: 9.0,
            controller: emailController,
            hintText: "Enter",
          ),
        )
      ],
    );
  }

  _countryWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 3.0),
          child: Text(
            "Country",
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
        Container(
          height: 50,
          width: double.infinity,
          margin: const EdgeInsets.only(right: 20, bottom: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: CustomColor.secondaryTextFormFieldColor),
          child: CountryCodePicker(
            initialSelection: Strings.bangladesh,
            showDropDownButton: true,
            showCountryOnly: true,
            showFlagMain: true,
            showOnlyCountryWhenClosed: true,
          ),
        ),
      ],
    );
  }

  _addCardWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Add Card",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: CustomColor.gray,
            fontSize: Dimensions.largeTextSize,
          ),
        ),
        SizedBox(
          height: Dimensions.heightSize * 0.5,
        ),
        Container(
          height: 50,
          width: double.infinity,
          margin: const EdgeInsets.only(right: 20, bottom: 10),
          decoration: BoxDecoration(
            color: CustomColor.secondaryTextFormFieldColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  context: context,
                  builder: (_) => buildSheet());
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: CustomColor.secondaryTextFormFieldColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$Currency",
                  style: const TextStyle(color: CustomColor.black),
                ),
                const Icon(
                  Icons.arrow_drop_down_circle,
                  color: CustomColor.gray,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildSheet() => const FractionallySizedBox(
        heightFactor: 0.8,
        child: CardScreen(),
      );
}

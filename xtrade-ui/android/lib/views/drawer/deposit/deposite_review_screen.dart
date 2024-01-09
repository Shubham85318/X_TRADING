import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtrade/routes/routes.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/dimensions.dart';
import 'package:xtrade/widgets/buttons/primary_button_widget.dart';
import 'package:xtrade/widgets/labels/text_lable_widget.dart';
import 'package:xtrade/widgets/textfields/card_number_textfield_widget.dart';
import 'package:xtrade/widgets/textfields/secondary_textfield_widget.dart';

class DepositReviewScreen extends StatefulWidget {
  const DepositReviewScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DepositReviewScreenState createState() => _DepositReviewScreenState();
}

class _DepositReviewScreenState extends State<DepositReviewScreen> {
  final formKey = GlobalKey<FormState>();
  bool value = false;

  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Deposit",
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
        body: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Dimensions.heightSize * 0.5,
              ),
              TextLabelWidget(
                text: "Card Type",
              ),
              SizedBox(
                height: Dimensions.heightSize * 0.5,
              ),
              CardNumberTextFieldWidget(
                controller: textController,
                hintText: "VISA",
              ),
              SizedBox(
                height: Dimensions.heightSize * 1,
              ),
              TextLabelWidget(
                text: "Account Number",
              ),
              SizedBox(
                height: Dimensions.heightSize * 0.5,
              ),
              SecondaryTextFieldWidget(
                controller: textController,
                hintText: "998 9987 9868",
              ),
              TextLabelWidget(
                text: "Amount",
              ),
              SizedBox(
                height: Dimensions.heightSize * 0.5,
              ),
              SecondaryTextFieldWidget(
                controller: textController,
                hintText: "Enter Amount",
              ),
              SizedBox(
                height: Dimensions.heightSize * 0.2,
              ),
              PrimaryButtonWidget(
                  title: "Conform",
                  onPressed: () {
                    _depositConfirm(context);
                  }),
            ],
          ),
        ),
      ),
    );
  }

  _depositConfirm(BuildContext context) {
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
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.50,
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
                        "assets/images/confirm.png",
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.heightSize * 1.5,
                    ),
                    Text(
                      "Your Payment is Success",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: CustomColor.primaryColor,
                          fontSize: Dimensions.smallTextSize + 2,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: Dimensions.heightSize * 1.5,
                    ),
                    PrimaryButtonWidget(
                      title: "Okay",
                      onPressed: () {
                        Get.toNamed(Routes.homeScreen);
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

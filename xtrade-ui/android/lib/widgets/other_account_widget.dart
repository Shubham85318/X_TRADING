import 'package:flutter/material.dart';
import 'package:xtrade/utils/dimensions.dart';
import 'package:xtrade/widgets/labels/text_lable_widget.dart';
import 'package:xtrade/widgets/textfields/secondary_textfield_widget.dart';

class OtherAccountWidget extends StatefulWidget {
  const OtherAccountWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _OtherAccountWidgetState createState() => _OtherAccountWidgetState();
}

class _OtherAccountWidgetState extends State<OtherAccountWidget> {
  final formKey = GlobalKey<FormState>();
  bool value = false;

  final textController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          Container(
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: const Text("Minimum Amount 100 USD"),
          ),
        ],
      ),
    );
  }
}

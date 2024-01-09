import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/strings.dart';

class ContactNumberWidget extends StatelessWidget {
  final Color? fillColor;
  const ContactNumberWidget({Key? key, this.fillColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              borderSide: const BorderSide(color: CustomColor.white),
              borderRadius: BorderRadius.circular(5.0),
            ),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                borderSide: BorderSide(color: CustomColor.primaryColor)),
            hintText: Strings.enterNumber,
            prefixIcon: CountryCodePicker(
              initialSelection: Strings.bangladesh,
              backgroundColor: CustomColor.secondaryTextFormFieldColor,
            ),
            filled: true,
            fillColor: fillColor,
          )),
    );
  }
}

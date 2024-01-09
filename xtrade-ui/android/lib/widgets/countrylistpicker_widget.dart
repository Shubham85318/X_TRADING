import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:xtrade/utils/custom_color.dart';

class CountryCodePickerWidget extends StatefulWidget {
  const CountryCodePickerWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CountryCodePickerWidgetState createState() => _CountryCodePickerWidgetState();
}

class _CountryCodePickerWidgetState extends State<CountryCodePickerWidget> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: CustomColor.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Pick your country",
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
      body: Center(
        child: CountryListPick(
          theme: CountryTheme(
            isShowFlag: true,
            isShowTitle: true,
            isShowCode: false,
            isDownIcon: true,
            showEnglishName: false,
            labelColor: CustomColor.black,
          ),
          initialSelection: '+880',
          // onChanged: (CountryCode code) {
          //   print(code.name);
          //   // print(code.code);
          //   // print(code.dialCode);
          //   // print(code.flagUri);
          // },
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/dimensions.dart';


class DateOfBirthWidget extends StatefulWidget {
  const DateOfBirthWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DateOfBirthWidgetState createState() => _DateOfBirthWidgetState();
}

class _DateOfBirthWidgetState extends State<DateOfBirthWidget> {
  String? birthDateInString = "Select";
  DateTime? birthDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Date of Birth",
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
          margin: const EdgeInsets.only(left: 0, right: 20),
          decoration: BoxDecoration(
            // border: Border.all(color: CustomColor.primaryColor),
            borderRadius: BorderRadius.circular(5),
            color: CustomColor.secondaryTextFormFieldColor
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("$birthDateInString"),
                    const Icon(Icons.calendar_today),
                  ],
                ),
                onTap: () async {
                  final datePick = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2100));
                  if (datePick != null && datePick != birthDate) {
                    setState(() {
                      birthDate = datePick;

                      birthDateInString =
                      "${birthDate!.month}/${birthDate!.day}/${birthDate!.year}"; // 08/14/2019
                    });
                  }
                }),
          ),
        ),
      ],
    );
  }
}

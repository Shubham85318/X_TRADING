import 'package:flutter/material.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/dimensions.dart';

class GenderWidget extends StatefulWidget {
  const GenderWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _GenderWidgetState createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  String? _dropDownValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: Text(
            "Gender",
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
          margin: const EdgeInsets.only(left: 20, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: CustomColor.secondaryTextFormFieldColor
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton(
              hint: _dropDownValue == null
                  ? const Text('Select Gender')
                  : Text(
                _dropDownValue!,
                style: const TextStyle(color: CustomColor.black),
              ),
              isExpanded: true,
              iconSize: 20.0,
              icon: const Icon(Icons.arrow_drop_down_circle),
              style: const TextStyle(color: Colors.black),
              items: ['Male', 'Female'].map(
                    (val) {
                  return DropdownMenuItem<String>(
                    value: val,
                    child: Text(val),
                  );
                },
              ).toList(),
              onChanged: (val) {
                setState(
                      () {
                    _dropDownValue = val;
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

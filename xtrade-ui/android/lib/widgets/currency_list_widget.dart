import 'package:country_currency_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/dimensions.dart';
import 'package:country_currency_pickers/currency_picker_dropdown.dart';

class CurrencyListWidget extends StatefulWidget {
  const CurrencyListWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CurrencyListWidgetState createState() => _CurrencyListWidgetState();
}

class _CurrencyListWidgetState extends State<CurrencyListWidget> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: Text(
            "Currency",
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
          margin: const EdgeInsets.only(left: 20, right: 10, bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: CustomColor.secondaryTextFormFieldColor
          ),
          child: ListTile(title: _buildCurrencyPickerDropdown(false)),
        ),
      ],
    );
  }

  _buildCurrencyPickerDropdown(bool filtered) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          CurrencyPickerDropdown(
            initialValue: 'INR',
            itemBuilder: _buildCurrencyDropdownItem,
            itemFilter: filtered
                ? (c) =>
                    ['INR', 'CAD', 'USD', 'CHF', 'EUR', 'BDT'].contains(c.currencyCode)
                : null,
            // onValuePicked: (Country? country) {
            //   print("${country?.name}");
            // },
          ),
        ],
      );

  Widget _buildCurrencyDropdownItem(Country country) => Text("${country.currencyCode}", style: const TextStyle(fontSize: 15),);

}

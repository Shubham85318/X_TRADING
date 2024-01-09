import 'package:flutter/material.dart';
import 'package:xtrade/data/radio_model.dart';

class CustomRadioWidget extends StatelessWidget {
  final RadioModel _item;

  // ignore: use_key_in_widget_constructors
  const CustomRadioWidget(this._item);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 10, right: 20),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: _item.isSelected ? Colors.transparent : Colors.transparent,
      ),
      child: Text(_item.buttonText,
          style: TextStyle(
              color: _item.isSelected ? Colors.blue : Colors.black,
              //fontWeight: FontWeight.bold,
              fontSize: 18.0)),
    );
  }
}



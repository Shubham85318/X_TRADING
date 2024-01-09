import 'package:flutter/material.dart';
import 'package:xtrade/utils/custom_color.dart';

class GridViewItemView extends StatefulWidget {
  const GridViewItemView({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _GridViewItemViewState createState() => _GridViewItemViewState();
}

class _GridViewItemViewState extends State<GridViewItemView> {
  bool pressAttention = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          pressAttention = !pressAttention;
        });
      },
      child: Container(
        padding: const EdgeInsets.only(right: 15, left: 15, top: 5, bottom: 5),
        decoration: BoxDecoration(
            color:
                pressAttention ? CustomColor.primaryColor : CustomColor.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 2,
              color: CustomColor.primaryColor,
            )),
        child: Text(
          widget.title,
          style: TextStyle(
              fontSize: 12,
              color: pressAttention
                  ? CustomColor.white
                  : CustomColor.primaryColor),
        ),
      ),
    );
  }
}

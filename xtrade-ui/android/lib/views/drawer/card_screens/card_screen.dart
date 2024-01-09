import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtrade/data/radio_model.dart';
import 'package:xtrade/routes/routes.dart';
import 'package:xtrade/widgets/buttons/primary_button_widget.dart';
import 'package:xtrade/widgets/custom_radion_widget.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  List<RadioModel> sampleData = <RadioModel>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sampleData.add(RadioModel(false, 'Visa Card'));
    sampleData.add(RadioModel(false, 'Mastercard'));
    sampleData.add(RadioModel(false, 'Paypal'));
    sampleData.add(RadioModel(false, 'Skrill'));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: sampleData.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                  onTap: () {
                    setState(() {
                      for (var element in sampleData) {
                        element.isSelected = false;
                      }
                      sampleData[index].isSelected = true;
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomRadioWidget(sampleData[index]),
                      const Divider(
                        thickness: 2,
                      )
                    ],
                  ));
            },
          ),
        ),
        PrimaryButtonWidget(
          title: 'Apply',
          onPressed: () {Get.toNamed(Routes.visaCardScreen);},
        )
      ],
    );
  }
}

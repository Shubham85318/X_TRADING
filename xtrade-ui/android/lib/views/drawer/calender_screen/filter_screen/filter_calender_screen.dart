import 'package:flutter/material.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/widgets/buttons/primary_button_widget.dart';

class FilterCalenderScreen extends StatefulWidget {
  const FilterCalenderScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FilterCalenderScreenState createState() => _FilterCalenderScreenState();
}

class _FilterCalenderScreenState extends State<FilterCalenderScreen> {
  int selectedIndex = 0;
  int countrySelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: CustomColor.white,
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "Filter Calender",
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
          body: Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: const Text("Impact"),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      margin: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          filterItems("Low", Colors.green, Colors.grey, Colors.grey, 0),
                          filterItems("Medium", Colors.yellow, Colors.yellow, Colors.grey, 1),
                          filterItems("High", Colors.red, Colors.red, Colors.red, 2),
                        ],

                      )
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top:10, bottom: 10),
                  child: const Text("Country"),
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      margin: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          countryItems("assets/countries/aus.png", "Australia", 0),
                          countryItems("assets/countries/bd.png", "Bangladesh", 1),
                          countryItems("assets/countries/cn.png", "China", 2),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Column(
                  children: [
                    Container(
                      height: 100,
                      margin: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          countryItems("assets/countries/ind.png", "India", 4),
                          countryItems("assets/countries/jp.png", "Japan", 5),
                          countryItems("assets/countries/usa.png", "USA", 6),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                PrimaryButtonWidget(title: "Apply", onPressed: (){})
              ],
            ),
          )),
    );
  }


  filterItems(String name, Color colorOne, Color colorTwo, Color colorThree, int index) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                child: GestureDetector(
              onTap: () {
                setState(() {
                 selectedIndex = index;
                });
              },
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: CustomColor.white,
                  border: Border.all(color: CustomColor.primaryColor, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          margin: const EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: colorOne),
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          margin: const EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: colorTwo),
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          margin: const EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: colorThree),
                        ),
                      ],
                    ),
                    Text(name)
                  ],
                ),
              ),
            )),
            Positioned(
                top: 5,
                left: 70,
                child: selectedIndex == index
                    ? const Icon(
                        Icons.check_circle,
                        color: CustomColor.primaryColor,
                  size: 20,
                      )
                    : Container()),
          ],
        ),
        const SizedBox(
          width: 20,
        )
      ],
    );
  }

  countryItems(String picture, String name, int index){
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      countrySelectedIndex = index;
                    });
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: CustomColor.white,
                      border: Border.all(color: CustomColor.primaryColor, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          child:  Image.asset(
                            picture,
                            height: 40,
                            width: 50,
                          ),
                        ),
                        Text(name)
                      ],
                    ),
                  ),
                )),
            Positioned(
                top: 5,
                left: 70,
                child: countrySelectedIndex == index
                    ? const Icon(
                  Icons.check_circle,
                  color: CustomColor.primaryColor,
                  size: 20,
                )
                    : Container()),
          ],
        ),
        const SizedBox(
          width: 20,
        )
      ],
    );
  }
}

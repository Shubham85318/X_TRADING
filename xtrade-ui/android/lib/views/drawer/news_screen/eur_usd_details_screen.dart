import 'package:flutter/material.dart';
import 'package:xtrade/utils/custom_color.dart';

class EurUsdDetailsScreen extends StatelessWidget {
  const EurUsdDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: CustomColor.white,
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "News",
              style: TextStyle(color: CustomColor.gray),
            ),
            backgroundColor: CustomColor.white,
            iconTheme: const IconThemeData(color: CustomColor.gray),
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "EURUSD; Exchange offer announce",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: const [
                              Text(
                                "January 16, 2022   By  ",
                                style: TextStyle(color: CustomColor.gray),
                              ),
                              Text("EURUSD")
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: Material(
                          elevation: 1,
                          borderRadius: BorderRadius.circular(20),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/eurusd.png"),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("16, Jan 2022"),
                                      ),
                                      Text(
                                        "EURUSD: Exchange offer",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        )),
                    Container(
                      margin:
                          const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: const Text(
                          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc."),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xtrade/routes/routes.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/custom_style.dart';
import 'package:xtrade/utils/dimensions.dart';
import 'package:xtrade/utils/strings.dart';
import 'package:xtrade/data/onboard_model.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _OnBoardScreenState createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      appBar: AppBar(
        backgroundColor: CustomColor.white,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              Get.toNamed(Routes.welcomeScreen);
            },
            child: Text(
              Strings.skip,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: Dimensions.largeTextSize + 2,
                color: CustomColor.gray,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      children: [
                        Image.asset(contents[i].image),
                        const SizedBox(height: 20),
                        Text(
                          contents[i].title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: Dimensions.largeTextSize + 2,
                            fontWeight: FontWeight.bold,
                            color: CustomColor.gray,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
            Container(
              height: 40,
              margin: const EdgeInsets.all(40),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (currentIndex == contents.length - 1) {
                    Get.toNamed(Routes.welcomeScreen);
                  }
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.bounceIn,
                  );
                },
                style: CustomStyle.textButtonStyle,
                child: Text(currentIndex == contents.length - 1
                    ? Strings.getStarted
                    : Strings.next),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 10 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:
            currentIndex >= index ? CustomColor.primaryColor : CustomColor.gray,
      ),
    );
  }
}

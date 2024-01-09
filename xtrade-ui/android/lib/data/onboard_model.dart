import 'package:xtrade/utils/strings.dart';

class OnBoardingContent {
  String image;
  String title;

  OnBoardingContent({ required this.image, required this.title});
}

List<OnBoardingContent> contents = [
  OnBoardingContent(
    image: "assets/images/onboard1.png",
    title: Strings.onboard1,
  ),
  OnBoardingContent(
    image: "assets/images/onboard2.png",
    title: Strings.onboard2,
  ),
  OnBoardingContent(
    image: "assets/images/onboard3.png",
    title: Strings.onboard3,
  ),
];

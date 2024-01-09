import 'package:flutter/material.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/custom_style.dart';

class AboutUserScreen extends StatelessWidget {
  const AboutUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "About",
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
      body: SizedBox(
        height: 600 ,
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Address", style: CustomStyle.normalBoldTextStyle,),
                  const SizedBox(height: 10),
                  const Text("13th Street, 47 W 13th St, New York, NY 10011, USA."),
                ],
              ),
            ),
            const Divider(thickness: 1, height: 5),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Contact", style: CustomStyle.normalBoldTextStyle,),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Email:", style: CustomStyle.normalTextStyle,), Text("a6edggf@gmail.com", style: CustomStyle.normalTextStyle,)],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Phone:", style: CustomStyle.normalTextStyle,), Text("917-255-1237", style: CustomStyle.normalTextStyle,)],
                  )
                ],
              ),
            ),
            const Divider(thickness: 1, height: 5),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Basic Info" , style: CustomStyle.normalBoldTextStyle,),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Gender:", style: CustomStyle.normalTextStyle,), Text("Female", style: CustomStyle.normalTextStyle,)],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Birthday:", style: CustomStyle.normalTextStyle,), Text("10 Jan 1890", style: CustomStyle.normalTextStyle,)],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Languages:", style: CustomStyle.normalTextStyle,), Text("English", style: CustomStyle.normalTextStyle,)],
                  )
                ],
              ),
            ),
            const Divider(thickness: 1, height: 5),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Achieve", style: CustomStyle.normalBoldTextStyle,),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Items:", style: CustomStyle.normalTextStyle,), Text("30", style: CustomStyle.normalTextStyle,)],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Owners:", style: CustomStyle.normalTextStyle,), Text("200", style: CustomStyle.normalTextStyle,)],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Traded:", style: CustomStyle.normalTextStyle,), Text("250", style: CustomStyle.normalTextStyle,)],
                  )
                ],
              ),
            ),
            const Divider(thickness: 1, height: 5),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Bio", style: CustomStyle.normalBoldTextStyle,),
                  const SizedBox(height: 10),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", style: CustomStyle.normalTextStyle,)
                ],
              ),
            ),
          ],
        )),
    );
  }
}

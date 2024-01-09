import 'package:flutter/material.dart';
import 'package:xtrade/data/message_model.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/strings.dart';
import 'package:xtrade/widgets/message/message_widget.dart';

class SupportBox extends StatefulWidget {
  const SupportBox({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SupportBoxState createState() => _SupportBoxState();
}

class _SupportBoxState extends State<SupportBox> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          Strings.supportBox,
          style: const TextStyle(
            color: CustomColor.gray,
          ),
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
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ListView.builder(
              reverse: true,
              itemCount: demoChatMessages.length,
              itemBuilder: (context, index) => MessageWidget(
                message: demoChatMessages[index],
              ),
            ),
          ),
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_circle,
                  color: CustomColor.gray,
                )),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  color: CustomColor.searchbar,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 10, right: 0),
                        child: const TextField(
                          decoration: InputDecoration(
                              hintText: "Type a message",
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.sentiment_satisfied_alt_outlined),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.mic,
                color: CustomColor.gray,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.camera_alt,
                  color: CustomColor.gray,
                )),
          ],
        )
      ],
    );
  }

}





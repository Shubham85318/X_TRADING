import 'package:flutter/material.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/data/message_model.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: message.isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 7, right: 7),

            child: Text(
              message.timeText,
              style: const TextStyle(
                fontSize: 11
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            margin: const EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
              color:
              message.isSender ? CustomColor.searchbar : CustomColor.primaryColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              message.text,
              style: TextStyle(
                  color: message.isSender ? CustomColor.black : CustomColor.white),
            ),
          ),
        ],
      ),
    );
  }
}

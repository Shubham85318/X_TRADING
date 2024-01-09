import 'package:flutter/material.dart';
import 'package:xtrade/data/message_model.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/widgets/message/text_message.dart';



class MessageWidget extends StatelessWidget {
  const MessageWidget({
    Key? key,
    required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    Widget messageContain(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(
            message: message,
          );
        default:
          return const SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment:
        message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            const CircleAvatar(
              backgroundImage: AssetImage("assets/icons/avatar_icon.png"),
            )
          ],
          messageContain(message),
          if (message.isSender) _messageSeen(),
        ],
      ),
    );
  }

  _messageSeen() {
    return Container(
        margin: const EdgeInsets.only(left: 5, top: 20),
        height: 12,
        width: 12,
        decoration: const BoxDecoration(
          color: CustomColor.primaryColor,
          shape: BoxShape.circle,
        ),
        child: Image.asset("assets/icons/avatar_icon.png",)
    );
  }
}
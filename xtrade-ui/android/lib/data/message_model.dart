
enum ChatMessageType { text, audio, image, video }
enum MessageStatus { notSent, notView, viewD }

class ChatMessage {
  final String text;
  final String timeText;
  final ChatMessageType messageType;
  final MessageStatus messageStatus;
  final bool isSender;

  ChatMessage(this.text, this.timeText, this.messageType, this.messageStatus, this.isSender);
}


List demoChatMessages = [
  ChatMessage("How to use my wallet?","8:30 PM", ChatMessageType.text, MessageStatus.viewD, true),
  ChatMessage("How can i help you?", "Support Box, 8:29 PM", ChatMessageType.text, MessageStatus.viewD, false),


];

enum MessageType { text, audio, image, video }
enum MessageStatus { not_sent, not_view, viewed }

class Message {
  final String text;
  final MessageType messageType;
  final MessageStatus messageStatus;
  final bool isSender;
  final String time;
  final String date;

  const Message({
    required this.text,
    required this.messageType,
    required this.messageStatus,
    required this.isSender,
    required this.time,
    required this.date,
  });
}

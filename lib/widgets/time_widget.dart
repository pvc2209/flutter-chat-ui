import 'package:flutter/material.dart';
import 'package:flutter_chat_app_ui/models/message.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget({Key? key, required this.message, required this.index})
      : super(key: key);

  final Message message;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          message.time,
          style: TextStyle(
            color: message.isSender
                ? Colors.green
                : (message.messageType == MessageType.image
                    ? Colors.white
                    : Colors.grey),
            fontSize: 14,
          ),
        ),
        StatusIcon(
          index: index,
          message: message,
        ),
      ],
    );
  }
}

class StatusIcon extends StatelessWidget {
  const StatusIcon({
    Key? key,
    required this.index,
    required this.message,
  }) : super(key: key);

  final int index;
  final Message message;

  @override
  Widget build(BuildContext context) {
    if (index != 0 || !message.isSender) {
      return Container();
    }

    IconData icon = Icons.schedule;
    if (message.messageStatus == MessageStatus.not_view) {
      icon = Icons.done;
    } else if (message.messageStatus == MessageStatus.viewed) {
      icon = Icons.done_all;
    }
    return Row(
      children: [
        const SizedBox(width: 3),
        Icon(
          icon,
          size: 16,
          color: Colors.green,
        ),
      ],
    );
  }
}

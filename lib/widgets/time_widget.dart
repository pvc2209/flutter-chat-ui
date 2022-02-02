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
        if (index == 0)
          Row(
            children: const [
              SizedBox(width: 3),
              Icon(
                Icons.check_circle,
                size: 16,
                color: Colors.green,
              ),
            ],
          ),
      ],
    );
  }
}

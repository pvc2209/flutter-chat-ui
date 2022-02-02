import 'package:flutter/material.dart';
import 'package:flutter_chat_app_ui/models/message.dart';
import 'package:flutter_chat_app_ui/widgets/time_widget.dart';

class TextMessageWidget extends StatelessWidget {
  const TextMessageWidget({
    Key? key,
    required this.showDate,
    required this.message,
    required this.index,
  }) : super(key: key);

  final bool showDate;
  final Message message;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (showDate)
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.all(6),
            child: Text(
              message.date,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        Container(
          margin: const EdgeInsets.only(
            bottom: 10,
            left: 10,
            right: 10,
          ),
          // width: double.infinity,
          alignment: message.isSender ? Alignment.topRight : Alignment.topLeft,
          child: Container(
            alignment:
                message.isSender ? Alignment.topRight : Alignment.topLeft,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: 10,
                      bottom: 18,
                      left: 10,
                      right: index == 0 ? 70 : 50),
                  decoration: BoxDecoration(
                    color: message.isSender
                        ? const Color(0xFFEFFEDD)
                        : Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(12.0),
                      topRight: const Radius.circular(12.0),
                      bottomLeft: message.isSender
                          ? const Radius.circular(12.0)
                          : Radius.zero,
                      bottomRight: message.isSender
                          ? Radius.zero
                          : const Radius.circular(12.0),
                    ),
                  ),
                  child: Text(
                    message.text,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: TimeWidget(
                    message: message,
                    index: index,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

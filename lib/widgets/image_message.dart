import 'package:flutter/material.dart';
import 'package:flutter_chat_app_ui/models/message.dart';
import 'package:flutter_chat_app_ui/widgets/time_widget.dart';

class ImageMessageWidget extends StatelessWidget {
  const ImageMessageWidget({
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
                // SizedBox(
                //   width: 150,
                //   height: 200,
                //   child: Container(
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(12),
                //       border: Border.all(width: 2, color: Colors.white),
                //       image: DecorationImage(
                //         image: AssetImage(message.text),
                //         fit: BoxFit.cover,
                //       ),
                //     ),
                //   ),
                // ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(1, 1),
                        color: Colors.black54,
                        blurRadius: 5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(message.text),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TimeWidget(
                      message: message,
                      index: index,
                    ),
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

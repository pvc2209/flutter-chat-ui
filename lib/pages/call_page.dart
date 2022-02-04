import 'package:flutter/material.dart';
import 'package:flutter_chat_app_ui/models/chat.dart';
import 'package:flutter_chat_app_ui/widgets/control_button.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Chat chatItem = ModalRoute.of(context)!.settings.arguments as Chat;

    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF0B1721),
                Color(0xFF153345),
              ],
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            bottomOpacity: 0,
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Text(
                    chatItem.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Đang gọi...",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ControlButton(
                      icon: const Icon(
                        Icons.volume_up,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                      title: "Loa",
                      backgroundColor: Colors.white.withOpacity(0.2),
                    ),
                    ControlButton(
                      icon: const Icon(
                        Icons.videocam_off_outlined,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                      title: "Video",
                      backgroundColor: Colors.white.withOpacity(0.2),
                    ),
                    ControlButton(
                      icon: const Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                      title: "Tắt tiếng",
                      backgroundColor: Colors.white.withOpacity(0.2),
                    ),
                    ControlButton(
                      icon: const Icon(
                        Icons.call_end,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      title: "Kết thúc",
                      backgroundColor: Colors.red,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

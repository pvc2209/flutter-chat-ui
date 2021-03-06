import 'package:flutter/material.dart';
import 'package:flutter_chat_app_ui/data/data.dart';
import 'package:flutter_chat_app_ui/models/chat.dart';
import 'package:flutter_chat_app_ui/models/message.dart';
import 'package:flutter_chat_app_ui/widgets/audio_message.dart';
import 'package:flutter_chat_app_ui/widgets/image_message.dart';
import 'package:flutter_chat_app_ui/widgets/text_message.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  final _controller = TextEditingController();
  bool showSendButton = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Chat chatItem = ModalRoute.of(context)!.settings.arguments as Chat;

    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(
                    chatItem.image,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(chatItem.name),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Truy cập 2 phút trước",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(8),
                        customBorder: const CircleBorder(),
                        radius: 40,
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            "/call",
                            arguments: chatItem,
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Icon(
                            Icons.phone,
                            size: 28,
                          ),
                        ),
                      ),
                      PopupMenuButton(
                        onSelected: (value) {
                          switch (value) {
                            case 1:
                              break;
                            case 2:
                              break;
                            case 3:
                              break;
                            case 4:
                              break;
                          }
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.more_vert,
                          size: 28,
                        ),
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.videocam_outlined,
                                  size: 30,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Gọi video"),
                              ],
                            ),
                            value: 1,
                          ),
                          PopupMenuItem(
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.search,
                                  size: 30,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Tìm kiếm"),
                              ],
                            ),
                            value: 2,
                          ),
                          PopupMenuItem(
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.notifications_off_outlined,
                                  size: 30,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Tắt thông báo"),
                              ],
                            ),
                            value: 3,
                          ),
                          PopupMenuItem(
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.person_add_outlined,
                                  size: 30,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Thêm vào danh bạ"),
                              ],
                            ),
                            value: 4,
                          ),
                          PopupMenuItem(
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.delete_forever_outlined,
                                  size: 30,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Xóa cuộc trò chuyện"),
                              ],
                            ),
                            value: 5,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: RawScrollbar(
                  thumbColor: Colors.black54,
                  radius: const Radius.circular(4),
                  thickness: 5,
                  child: ListView.builder(
                    reverse: true,
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      var message = messages[index];

                      bool showDate = false;
                      if (index == messages.length - 1 ||
                          (index < messages.length - 1 &&
                              messages[index].date !=
                                  messages[index + 1].date)) {
                        showDate = true;
                      }

                      switch (message.messageType) {
                        case MessageType.text:
                          return TextMessageWidget(
                            showDate: showDate,
                            message: message,
                            index: index,
                          );
                        case MessageType.image:
                          return ImageMessageWidget(
                            showDate: showDate,
                            message: message,
                            index: index,
                          );
                        case MessageType.audio:
                          return AudioMessageWidget(
                            showDate: showDate,
                            message: message,
                            index: index,
                          );
                        case MessageType.video:
                          // TODO: Handle this case.
                          break;
                      }

                      return Container();
                    },
                  ),
                ),
              ),
              TextField(
                controller: _controller,
                onChanged: (value) {
                  if (value.isNotEmpty && showSendButton == false) {
                    setState(() {
                      showSendButton = true;
                    });
                  } else if (value.isEmpty) {
                    setState(() {
                      showSendButton = false;
                    });
                  }
                },
                textInputAction: TextInputAction.send,
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Tin nhắn",
                  hintStyle: const TextStyle(fontSize: 20.0),
                  prefixIcon: InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.sentiment_satisfied_alt,
                      size: 28.0,
                      color: Colors.grey,
                    ),
                  ),
                  suffixIcon: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 500),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return ScaleTransition(scale: animation, child: child);
                    },
                    child: !showSendButton
                        ? Row(
                            key: ValueKey(1),
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  child: Icon(
                                    Icons.mic_outlined,
                                    size: 28.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  child: Icon(
                                    Icons.image,
                                    size: 28.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Row(
                            key: ValueKey(2),
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Opacity(
                                opacity: 0,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Icon(
                                    Icons.mic_outlined,
                                    size: 28.0,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Icon(
                                  Icons.send,
                                  size: 28.0,
                                ),
                              ),
                            ],
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

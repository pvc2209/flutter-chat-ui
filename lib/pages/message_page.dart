import 'package:flutter/material.dart';
import 'package:flutter_chat_app_ui/models/chat.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Chat chatItem = ModalRoute.of(context)!.settings.arguments as Chat;

    return Scaffold(
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
                    customBorder: CircleBorder(),
                    radius: 40,
                    onTap: () {},
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
                        value: 4,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Center(
        child: Text("Message"),
      ),
    );
  }
}

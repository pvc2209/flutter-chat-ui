import 'package:flutter/material.dart';
import 'package:flutter_chat_app_ui/data/data.dart';
import 'package:flutter_chat_app_ui/widgets/chat_card.dart';
import 'package:flutter_chat_app_ui/widgets/custom_appbar.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: chatsData.length,
        itemBuilder: (context, index) {
          var chatItem = chatsData[index];

          return ChatCard(chatItem: chatItem);
        },
      ),
    );
  }
}

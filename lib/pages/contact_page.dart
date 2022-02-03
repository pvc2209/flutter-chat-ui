import 'package:flutter/material.dart';
import 'package:flutter_chat_app_ui/data/data.dart';
import 'package:flutter_chat_app_ui/models/chat.dart';
import 'package:flutter_chat_app_ui/models/friend.dart';
import 'package:flutter_chat_app_ui/widgets/custom_appbar.dart';

// Không convert được, móa
// final Map<String, String> map = {
//   "ă": "a",
//   "â": "a",
//   "đ": "d",
//   "ê": "e",
//   "ô": "o",
//   "ơ": "o",
//   "ư": "u",
//   "Ă": "a",
//   "Â": "a",
//   "Đ": "d",
//   "Ê": "e",
//   "Ô": "o",
//   "Ơ": "o",
//   "Ư": "u",
// };

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Friend> onlineFriends = [];
    List<Friend> offlineFriends = [];
    for (var friend in friends) {
      if (friend.isOnline) {
        onlineFriends.add(friend);
      } else {
        offlineFriends.add(friend);
      }
    }

    friends.clear();
    friends.addAll(onlineFriends);
    friends.addAll(offlineFriends);

    return Scaffold(
      appBar: const CustomAppbar(),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: friends.length,
        itemBuilder: (context, index) {
          var friend = friends[index];
          return InkWell(
            onTap: () {
              Chat fake = Chat(
                name: friend.name,
                lastMessage: "",
                image: friend.image,
                time: "",
                unreadMessageCount: 0,
              );

              Navigator.pushNamed(
                context,
                "/message",
                arguments: fake,
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        child: CircleAvatar(
                          radius: 32,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(
                            friend.image,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 3,
                        right: 5,
                        child: Container(
                          width: 14,
                          height: 14,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: friend.isOnline
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            border: Border.all(width: 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                  Text(
                    friend.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.phone_outlined,
                            color: Colors.grey,
                            size: 28,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.videocam_outlined,
                            size: 30,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

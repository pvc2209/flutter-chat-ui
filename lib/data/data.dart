import 'package:flutter_chat_app_ui/models/chat.dart';
import 'package:flutter_chat_app_ui/models/friend.dart';
import 'package:flutter_chat_app_ui/models/message.dart';
import 'package:flutter_chat_app_ui/models/notification.dart';

var chatsData = [
  Chat(
    name: "Tài Ðức",
    lastMessage: "Happy new year...",
    image: "assets/images/1.jpeg",
    time: "1 phút",
    unreadMessageCount: 2,
  ),
  Chat(
    name: "Thường Kiệt",
    lastMessage: "Em ăn cơm chưa?",
    image: "assets/images/2.jpeg",
    time: "3 phút",
    unreadMessageCount: 5,
  ),
  Chat(
    name: "Quang Linh",
    lastMessage: "Em có thích ăn rau dền không?",
    image: "assets/images/3.jpeg",
    time: "10 phút",
    unreadMessageCount: 1,
  ),
  Chat(
    name: "Ðức Phong",
    lastMessage: "Chào em, cho anh làm quen nhé?",
    image: "assets/images/4.jpeg",
    time: "30 phút",
    unreadMessageCount: 0,
  ),
  Chat(
    name: "Anh Tùng",
    lastMessage: "Happy new year...",
    image: "assets/images/5.jpeg",
    time: "1 giờ",
    unreadMessageCount: 0,
  ),
  Chat(
    name: "Quốc Thiện",
    lastMessage: "Happy new year...",
    image: "assets/images/6.jpeg",
    time: "5 giờ",
    unreadMessageCount: 0,
  ),
  Chat(
    name: "Ðức Long",
    lastMessage: "Happy new year...",
    image: "assets/images/7.jpeg",
    time: "T7",
    unreadMessageCount: 0,
  ),
  Chat(
    name: "Hải Nam",
    lastMessage: "Happy new year...",
    image: "assets/images/8.jpeg",
    time: "T4",
    unreadMessageCount: 0,
  ),
  Chat(
    name: "Minh Vũ",
    lastMessage: "Happy new year...",
    image: "assets/images/9.jpeg",
    time: "T2",
    unreadMessageCount: 0,
  ),
  Chat(
    name: "Mạnh Thắng",
    lastMessage: "Happy new year...",
    image: "assets/images/10.jpeg",
    time: "CN",
    unreadMessageCount: 0,
  ),
];

var messages = const [
  Message(
    text: "Chúc mừng năm mới...",
    messageType: MessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: true,
    time: "18:29",
    date: "02/01/2022",
  ),
  Message(
    text: "assets/images/1.jpeg",
    messageType: MessageType.image,
    messageStatus: MessageStatus.viewed,
    isSender: false,
    time: "09:02",
    date: "02/01/2022",
  ),
  Message(
    text: "Chào em 3",
    messageType: MessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
    time: "10:12",
    date: "01/01/2022",
  ),
  Message(
    text: "Chào em 4",
    messageType: MessageType.audio,
    messageStatus: MessageStatus.viewed,
    isSender: true,
    time: "12:10",
    date: "01/01/2022",
  ),
  Message(
    text: "assets/images/background.jpg",
    messageType: MessageType.image,
    messageStatus: MessageStatus.viewed,
    isSender: true,
    time: "10:12",
    date: "01/01/2022",
  ),
  Message(
    text: "Chào em 4",
    messageType: MessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
    time: "12:10",
    date: "01/01/2022",
  ),
  Message(
    text: "Chào em 3",
    messageType: MessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
    time: "10:12",
    date: "01/01/2022",
  ),
  Message(
    text: "Chào em 4",
    messageType: MessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
    time: "12:10",
    date: "01/01/2022",
  ),
  Message(
    text: "Chào em 3",
    messageType: MessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
    time: "10:12",
    date: "01/01/2022",
  ),
  Message(
    text: "Chào em 4",
    messageType: MessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
    time: "12:10",
    date: "01/01/2022",
  ),
  Message(
    text: "Chào em 3",
    messageType: MessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: true,
    time: "10:12",
    date: "01/01/2022",
  ),
  Message(
    text: "Chào em 4",
    messageType: MessageType.audio,
    messageStatus: MessageStatus.viewed,
    isSender: false,
    time: "12:10",
    date: "01/01/2022",
  ),
];

var friends = [
  Friend(
    name: "Tài Ðức",
    isOnline: true,
    image: "assets/images/1.jpeg",
  ),
  Friend(
    name: "Thường Kiệt",
    isOnline: false,
    image: "assets/images/2.jpeg",
  ),
  Friend(
    name: "Quang Linh",
    isOnline: true,
    image: "assets/images/3.jpeg",
  ),
  Friend(
    name: "Ðức Phong",
    isOnline: true,
    image: "assets/images/4.jpeg",
  ),
  Friend(
    name: "Anh Tùng",
    isOnline: false,
    image: "assets/images/5.jpeg",
  ),
  Friend(
    name: "Quốc Thiện",
    isOnline: true,
    image: "assets/images/6.jpeg",
  ),
  Friend(
    name: "Ðức Long",
    isOnline: true,
    image: "assets/images/7.jpeg",
  ),
  Friend(
    name: "Hải Nam",
    isOnline: false,
    image: "assets/images/8.jpeg",
  ),
  Friend(
    name: "Minh Vũ",
    isOnline: true,
    image: "assets/images/9.jpeg",
  ),
  Friend(
    name: "Mạnh Thắng",
    isOnline: false,
    image: "assets/images/10.jpeg",
  ),
];

var notifications = const [
  Notification(
    title: "Lời mời kết bạn",
    time: "25 phút trước",
    content: "Làm bạn nhé!",
    image: "assets/images/2.jpeg",
  ),
  Notification(
    title: "Lời mời kết bạn",
    time: "25 phút trước",
    content: "Làm bạn nhé!",
    image: "assets/images/3.jpeg",
  ),
];

class Chat {
  final String name;
  final String lastMessage;
  final String image;
  final String time;
  final int unreadMessageCount;

  Chat({
    required this.name,
    required this.lastMessage,
    required this.image,
    required this.time,
    required this.unreadMessageCount,
  });
}

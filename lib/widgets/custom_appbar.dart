import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/search");
            },
            child: Row(
              children: [
                const Icon(
                  Icons.search,
                  size: 30,
                ),
                const SizedBox(width: 20),
                Text(
                  "Tìm bạn bè, tin nhắn ...",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white.withOpacity(0.6),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          InkWell(
            borderRadius: BorderRadius.circular(5),
            child: const Padding(
              padding: EdgeInsets.all(5),
              child: Icon(Icons.qr_code),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

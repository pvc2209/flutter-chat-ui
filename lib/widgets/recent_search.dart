import 'package:flutter/material.dart';
import 'package:flutter_chat_app_ui/data/data.dart';
import 'package:flutter_chat_app_ui/widgets/result_search_card.dart';

class RecentSearch extends StatelessWidget {
  const RecentSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Tìm kiếm gần đây",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Xóa",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return ResultSearchCard(
                name: friends[index].name,
                image: friends[index].image,
                phoneNumber: "0394779999",
              );
            },
          )),
        ],
      ),
    );
  }
}

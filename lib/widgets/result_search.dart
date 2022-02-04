import 'package:flutter/material.dart';
import 'package:flutter_chat_app_ui/data/data.dart';

import 'result_search_card.dart';

class ResultSearch extends StatelessWidget {
  const ResultSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text(
              "Kết quả tìm kiếm",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 1,
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

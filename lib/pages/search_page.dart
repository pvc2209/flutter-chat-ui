import 'package:flutter/material.dart';
import 'package:flutter_chat_app_ui/data/data.dart';
import 'package:flutter_chat_app_ui/widgets/recent_search.dart';
import 'package:flutter_chat_app_ui/widgets/result_search.dart';
import 'package:flutter_chat_app_ui/widgets/shimmer_loading.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool showLoading = false;
  bool showResult = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              width: 250,
              height: 40,
              margin: const EdgeInsets.only(right: 10),
              child: TextField(
                onChanged: (value) {
                  // pha ke :)
                  if (showLoading == false) {
                    setState(() {
                      showLoading = true;
                      showResult = false;

                      Future.delayed(const Duration(seconds: 1), () {
                        setState(() {
                          showLoading = false;
                        });
                      });
                    });
                  }
                },
                onSubmitted: (value) {
                  setState(() {
                    showResult = true;
                  });
                },
                textInputAction: TextInputAction.search,
                autofocus: true,
                cursorColor: Colors.grey,
                style: const TextStyle(fontSize: 16),
                decoration: InputDecoration(
                  hintText: "Tìm bạn bè, tin nhắn ...",
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  contentPadding: const EdgeInsets.all(1),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.green, width: 0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.green, width: 0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.green, width: 0),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(5),
              child: const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Icon(Icons.qr_code),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Builder(
        builder: (context) {
          if (showResult) {
            return const ResultSearch();
          }

          if (showLoading) {
            return const ShimmerLoadingWidget();
          } else {
            return const RecentSearch();
          }
        },
      ),
      // body: ShimmerLoadingWidget(),
    );
  }
}

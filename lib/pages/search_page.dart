import 'package:flutter/material.dart';
import 'package:flutter_chat_app_ui/widgets/recent_search.dart';
import 'package:flutter_chat_app_ui/widgets/result_search.dart';
import 'package:flutter_chat_app_ui/widgets/shimmer_loading.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _controller = TextEditingController();

  bool showLoading = false;
  bool showResult = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 40,
                child: TextField(
                  controller: _controller,
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
                    suffixIcon: IconButton(
                      onPressed: _controller.clear,
                      icon: Icon(Icons.clear),
                    ),
                    hintText: "Tìm bạn bè, tin nhắn ...",
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    contentPadding: const EdgeInsets.all(0),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          const BorderSide(color: Colors.green, width: 0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          const BorderSide(color: Colors.green, width: 0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.green, width: 0),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ),
            // InkWell(
            //   borderRadius: BorderRadius.circular(5),
            //   child: Container(
            //     margin: EdgeInsets.symmetric(vertical: 15),
            //     child: Icon(Icons.qr_code),
            //   ),
            //   onTap: () {},
            // ),
            // IconButton(onPressed: () {}, icon: Icon(Icons.qr_code))
          ],
        ),
        actions: [
          GestureDetector(
            child: Padding(
              padding: EdgeInsets.only(top: 16, right: 16, bottom: 16),
              child: Icon(Icons.qr_code),
            ),
            onTap: () {},
          ),
        ],
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

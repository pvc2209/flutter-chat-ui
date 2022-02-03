import 'package:flutter/material.dart';
import 'package:flutter_chat_app_ui/data/data.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool showLoading = false;

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
                    });
                  }
                },
                onSubmitted: (value) {
                  if (showLoading == true) {
                    setState(() {
                      showLoading = false;
                    });
                  }
                },
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
      body: showLoading
          ? const ShimmerLoadingWidget()
          : Container(
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
                      return ResultSearchWidget(
                        name: friends[index].name,
                        image: friends[index].image,
                        phoneNumber: "0394779999",
                      );
                    },
                  )),
                ],
              ),
            ),
      // body: ShimmerLoadingWidget(),
    );
  }
}

class ResultSearchWidget extends StatelessWidget {
  const ResultSearchWidget({
    Key? key,
    required this.image,
    required this.name,
    required this.phoneNumber,
  }) : super(key: key);

  final String image;
  final String name;
  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 100,
      child: Row(
        children: [
          CircleAvatar(
            radius: 32,
            backgroundColor: const Color(0xFFF5F4F6),
            backgroundImage: AssetImage(image),
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 20,
                child: Text(
                  name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: 200,
                height: 20,
                child: Text(
                  phoneNumber,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ShimmerLoadingWidget extends StatelessWidget {
  const ShimmerLoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.white,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          height: 100,
          child: Row(
            children: [
              const CircleAvatar(
                radius: 32,
                backgroundColor: Color(0xFFF5F4F6),
              ),
              const SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 20,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F4F6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 200,
                    height: 20,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F4F6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}

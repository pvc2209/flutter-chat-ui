import 'package:flutter/material.dart';

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

import 'package:flutter/material.dart';

class ResultSearchCard extends StatelessWidget {
  const ResultSearchCard({
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
              Text(
                name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                phoneNumber,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

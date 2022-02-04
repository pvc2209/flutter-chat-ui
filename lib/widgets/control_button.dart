import 'package:flutter/material.dart';

class ControlButton extends StatelessWidget {
  const ControlButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    required this.title,
    required this.backgroundColor,
  }) : super(key: key);

  final Icon icon;
  final VoidCallback onPressed;
  final String title;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Ink(
          padding: const EdgeInsets.all(5),
          decoration: ShapeDecoration(
            color: backgroundColor,
            shape: const CircleBorder(),
          ),
          child: IconButton(
            iconSize: 32.0,
            onPressed: onPressed,
            icon: icon,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

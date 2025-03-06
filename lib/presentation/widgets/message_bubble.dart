import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final Color colorBubble;
  final Widget child;
  const MessageBubble(
      {super.key,
      required this.alignment,
      required this.colorBubble,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: colorBubble,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: child,
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}

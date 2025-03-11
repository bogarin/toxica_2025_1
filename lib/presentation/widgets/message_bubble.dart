import 'package:flutter/material.dart';
import 'package:toxica_2/presentation/widgets/image_bubble.dart';

class MessageBubble extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final Color colorBubble;
  final Widget child;
  final String? urlImageBubble;
  const MessageBubble(
      {super.key,
      required this.alignment,
      required this.colorBubble,
      required this.child,
      this.urlImageBubble});

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
          height: 5,
        ),
        if (urlImageBubble != null) ...[
          ImageBubble(urlImageBubble: urlImageBubble!),
          const SizedBox(
            height: 10,
          ),
        ]
      ],
    );
  }
}

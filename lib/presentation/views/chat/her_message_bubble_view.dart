import 'package:flutter/material.dart';
import 'package:toxica_2/presentation/widgets/message_bubble.dart';

class HerMessageBubbleView extends StatelessWidget {
  final ColorScheme colors;
  final String msg;
  const HerMessageBubbleView(
      {super.key, required this.colors, required this.msg});

  @override
  Widget build(BuildContext context) {
    return MessageBubble(
      alignment: CrossAxisAlignment.start,
      colorBubble: colors.secondary,
      child: Text(
        msg,
        style: TextStyle(color: colors.onSecondary),
      ),
    );
  }
}

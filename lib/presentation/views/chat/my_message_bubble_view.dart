import 'package:flutter/material.dart';
import 'package:toxica_2/presentation/widgets/message_bubble.dart';

class MyMessageBubbleView extends StatelessWidget {
  final ColorScheme colors;
  final String msg;
  const MyMessageBubbleView(
      {super.key, required this.colors, required this.msg});

  @override
  Widget build(BuildContext context) {
    return MessageBubble(
      alignment: CrossAxisAlignment.end,
      colorBubble: colors.primary,
      child: Text(
        msg,
        style: TextStyle(color: colors.onPrimary),
      ),
    );
  }
}

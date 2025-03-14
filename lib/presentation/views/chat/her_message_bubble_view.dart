import 'package:flutter/material.dart';
import 'package:toxica_2/domain/entities/message.dart';
import 'package:toxica_2/presentation/widgets/message_bubble.dart';

class HerMessageBubbleView extends StatelessWidget {
  final ColorScheme colors;
  final Message msg;
  const HerMessageBubbleView(
      {super.key, required this.colors, required this.msg});

  @override
  Widget build(BuildContext context) {
    return MessageBubble(
      alignment: CrossAxisAlignment.start,
      colorBubble: colors.secondary,
      urlImageBubble: msg.imageUrl,
      child: Text(
        msg.text,
        style: TextStyle(color: colors.onSecondary),
      ),
    );
  }
}

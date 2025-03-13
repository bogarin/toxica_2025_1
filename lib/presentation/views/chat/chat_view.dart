import 'package:flutter/material.dart';
import 'package:toxica_2/presentation/views/chat/her_message_bubble_view.dart';
import 'package:toxica_2/presentation/views/chat/my_message_bubble_view.dart';
import 'package:toxica_2/presentation/widgets/message_field_box.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return index % 2 == 0
                        ? MyMessageBubbleView(
                            colors: colors, msg: 'vamos por tacos?')
                        : HerMessageBubbleView(colors: colors, msg: 'No');
                  }),
            ),
            const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}

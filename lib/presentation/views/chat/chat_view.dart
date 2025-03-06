import 'package:flutter/material.dart';
import 'package:toxica_2/presentation/views/chat/her_message_bubble_view.dart';
import 'package:toxica_2/presentation/views/chat/my_message_bubble_view.dart';

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
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return index % 2 == 0
                        ? MyMessageBubbleView(
                            colors: colors, msg: 'Jose Ramon Bogarin')
                        : HerMessageBubbleView(
                            colors: colors, msg: 'Your message here');
                  }),
            ),
            const Text('hola')
          ],
        ),
      ),
    );
  }
}

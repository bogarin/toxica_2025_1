import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toxica_2/domain/entities/message.dart';
import 'package:toxica_2/presentation/views/chat/her_message_bubble_view.dart';
import 'package:toxica_2/presentation/views/chat/my_message_bubble_view.dart';
import 'package:toxica_2/presentation/widgets/message_field_box.dart';
import 'package:toxica_2/providers/chat_provider.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final ChatProvider chatProvider = context.watch<ChatProvider>();
    final colors = Theme.of(context).colorScheme;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: chatProvider.messagesList.length,
                  itemBuilder: (context, index) {
                    return chatProvider.messagesList[index].fromWho ==
                            FromWho.me
                        ? MyMessageBubbleView(
                            colors: colors,
                            msg: chatProvider.messagesList[index])
                        : HerMessageBubbleView(
                            colors: colors,
                            msg: chatProvider.messagesList[index]);
                  }),
            ),
            MessageFieldBox(
                onValue: (String value) => chatProvider.sendMessage(value)),
          ],
        ),
      ),
    );
  }
}

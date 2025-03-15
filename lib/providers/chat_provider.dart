import 'package:flutter/material.dart';
import 'package:toxica_2/domain/entities/message.dart';
import 'package:toxica_2/helpers/get_yes_no_answer.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController scrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();
  final List<Message> messagesList = [];

  Future<void> herReply() async {
    final herMessage = await getYesNoAnswer.getAnswer();
    messagesList.add(herMessage);
    notifyListeners();
  }

  Future<void> sendMessage(String message) async {
    messagesList.add(Message(text: message, fromWho: FromWho.me));
    notifyListeners();
    moveScrollToBottom();
    if (message.endsWith('?')) {
      await herReply();
      moveScrollToBottom();
    }
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}

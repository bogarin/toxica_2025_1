import 'package:flutter/material.dart';
import 'package:toxica_2/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final List<Message> messagesList = [
    const Message(
      text: 'Hola, ¿cómo estás?',
      fromWho: FromWho.me,
    ),
    const Message(
      text: 'Estoy bien, gracias por',
      imageUrl:
          'https://yesno.wtf/assets/no/8-5e08abbe5aacd2cf531948145b787e9a.gif',
      fromWho: FromWho.hers,
    ),
  ];

  Future<void> sendMessage(String message) async {
    messagesList.add(Message(text: message, fromWho: FromWho.me));
    notifyListeners();
  }
}

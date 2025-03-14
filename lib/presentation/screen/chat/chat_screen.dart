import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toxica_2/presentation/views/chat/chat_view.dart';
import 'package:toxica_2/providers/theme_provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeProvider themeProvider = context.watch<ThemeProvider>();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mi toxica'),
          centerTitle: false,
          leading: const Padding(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://elcomercio.pe/resizer/v2/5WTRWCTPRZEYLPAZ55PAUOHAFA.jpg?auth=767358b42cb0c2c6b201d4c667657d45462c3e57048907f2ee9a0b4b59672ab5&width=1200&quality=90&smart=true'),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(themeProvider.appTheme.brightness == Brightness.dark
                  ? Icons.dark_mode
                  : Icons.sunny),
              onPressed: () {
                (themeProvider.appTheme.brightness == Brightness.dark)
                    ? themeProvider.setBrightness(Brightness.light)
                    : themeProvider.setBrightness(Brightness.dark);
              },
            ),
          ],
        ),
        body: const ChatView());
  }
}

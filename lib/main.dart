import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toxica_2/presentation/screen/chat/chat_screen.dart';
import 'package:toxica_2/providers/chat_provider.dart';
import 'package:toxica_2/providers/theme_provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const _CustomMain(),
    );
  }
}

class _CustomMain extends StatelessWidget {
  const _CustomMain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeProvider themeProvider = context.watch<ThemeProvider>();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeProvider.appTheme.theme(),
      home: const ChatScreen(),
    );
  }
}

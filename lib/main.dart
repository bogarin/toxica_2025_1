import 'package:flutter/material.dart';
import 'package:toxica_2/config/theme/app_theme.dart';
import 'package:toxica_2/presentation/screen/chat/chat_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColors: 2).theme(),
      home: const ChatScreen(),
    );
  }
}

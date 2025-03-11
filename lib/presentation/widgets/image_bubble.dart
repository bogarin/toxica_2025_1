import 'package:flutter/material.dart';

class ImageBubble extends StatelessWidget {
  final String urlImageBubble;
  const ImageBubble({super.key, required this.urlImageBubble});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        urlImageBubble,
        fit: BoxFit.cover,
        width: size.width * 0.7,
        height: 150,
      ),
    );
  }
}

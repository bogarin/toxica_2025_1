import 'package:flutter/material.dart';

class MessageFieldBox extends StatefulWidget {
  final void Function(String) onValue;
  const MessageFieldBox({super.key, required this.onValue});

  @override
  State<MessageFieldBox> createState() => _MessageFieldBoxState();
}

class _MessageFieldBoxState extends State<MessageFieldBox> {
  final TextEditingController textController = TextEditingController();
  final focusNode = FocusNode();
  @override
  void dispose() {
    textController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return TextFormField(
        controller: textController,
        focusNode: focusNode,
        decoration: customInputDecoration(
            colors: colors,
            onPressed: () {
              final textValue = textController.value.text;
              if (textValue.isNotEmpty) {
                widget.onValue(textValue);
                textController.clear();
                focusNode.requestFocus();
              }
            }),
        onTapOutside: (event) {
          focusNode.unfocus();
        },
        onFieldSubmitted: (value) {
          widget.onValue(value);
          textController.clear();
          focusNode.requestFocus();
        });
  }

  InputDecoration customInputDecoration(
          {required ColorScheme colors, required VoidCallback onPressed}) =>
      InputDecoration(
          enabledBorder: customOutLineInputBorder(color: colors.primary),
          focusedBorder: customOutLineInputBorder(color: colors.primary),
          hintText: 'envía tu pregunta "??"',
          filled: true,
          suffixIcon: IconButton(
            icon: const Icon(Icons.send_and_archive_outlined),
            onPressed: onPressed,
          ));

  OutlineInputBorder customOutLineInputBorder({required Color color}) =>
      OutlineInputBorder(
        borderSide: BorderSide(color: color),
        borderRadius: BorderRadius.circular(20),
      );
}

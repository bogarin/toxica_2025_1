import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textController = TextEditingController();
    final focusNode = FocusNode();
    final colors = Theme.of(context).colorScheme;

    return TextFormField(
        controller: textController,
        focusNode: focusNode,
        decoration: customInputDecoration(
            colors: colors,
            onPressed: () {
              final textValue = textController.value.text;
              if (textValue.isNotEmpty) {
                print('Aqui se envia el mensaje $textValue');
                textController.clear();
              }
            }),
        onTapOutside: (event) {
          focusNode.unfocus();
        },
        onFieldSubmitted: (value) {
          print('aquí push enter $value');
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

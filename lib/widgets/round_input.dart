import 'package:flutter/material.dart';

class RoundInput extends StatelessWidget {
  const RoundInput(
      {Key? key,
      this.label = "",
      this.keyboardType = TextInputType.text,
      this.isPassword = false,
      required this.onChanged})
      : super(key: key);

  final String label;
  final bool isPassword;
  final TextInputType keyboardType;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (text) {
        onChanged(text);
      },
      keyboardType: keyboardType,
      obscureText: isPassword,
      enableSuggestions: false,
      autocorrect: false,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          filled: true,
          hintStyle: const TextStyle(color: Colors.black38),
          hintText: label,
          contentPadding: const EdgeInsets.all(15),
          fillColor: Colors.white70),
    );
  }
}

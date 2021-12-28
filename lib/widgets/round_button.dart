import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({Key? key, this.title = "", required this.onPressed})
      : super(key: key);

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 1.5),
        primary: const Color(0xff51D0D0),
        padding: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ));

    return ElevatedButton(
      style: style,
      onPressed: () {
        onPressed();
      },
      child: Text(title),
    );
  }
}

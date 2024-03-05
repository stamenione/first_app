import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
    this.buttonText,
    this.onTap, {
    super.key,
  });

  final String buttonText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 40,
          ),
          backgroundColor: Colors.orangeAccent,
          foregroundColor: Colors.white),
      child: Text(
        buttonText,
        textAlign: TextAlign.center,
      ),
    );
  }
}

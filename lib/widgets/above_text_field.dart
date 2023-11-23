import 'package:flutter/material.dart';

class AboveTextField extends StatelessWidget {
  const AboveTextField({
    super.key,
    required this.textAbove,
  });
  final String textAbove;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAbove,
      textAlign: TextAlign.right,
      style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.white.withOpacity(0.70)),
    );
  }
}
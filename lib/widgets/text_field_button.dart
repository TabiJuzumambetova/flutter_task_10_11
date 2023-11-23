import 'package:flutter/material.dart';

class TextFieldButton extends StatelessWidget {
  const TextFieldButton({
    Key? key,
    required this.hintText,
    this.keyboard = TextInputType.name,
    this.suffixText, 
  }) : super(key: key);

  final String hintText;
  final TextInputType keyboard;
  final Icon? suffixText; 

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboard,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        suffixIcon: suffixText != null 
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: suffixText
              )
            : null,
      ),
    );
  }
}

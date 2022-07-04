import 'package:flutter/material.dart';

class PinCodeField extends StatelessWidget {
  final TextEditingController controller;

  const PinCodeField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      child: TextField(
        controller: controller,
        enabled: false,
        obscureText: true,
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(10),
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.transparent,
        ),
        maxLength: 1,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 21,
          color: Colors.white,
        ),
      ),
    );
  }
}

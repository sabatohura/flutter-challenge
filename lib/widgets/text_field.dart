import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  // final TextEditingController controller;
  final String hintText;
  final bool obsecureText;
  const MyTextField({
    super.key,
    // required this.controller,
    required this.hintText,
    required this.obsecureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obsecureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Color.fromARGB(255, 32, 31, 31)),
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
        fillColor: Colors.black,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade400,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade600,
          ),
        ),
      ),
    );
  }
}

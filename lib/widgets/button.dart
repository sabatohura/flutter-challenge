import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final Function()? onTap;
  const Button({super.key, required this.buttonText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), color: Colors.black),
        child: Center(
            child: Text(
          buttonText,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        )),
      ),
    );
  }
}

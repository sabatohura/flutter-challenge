import 'package:flutter/material.dart';

class FormDropDownField extends StatefulWidget {
  final List<DropdownMenuItem<String>> items;
  final String selectedValue;
  const FormDropDownField({
    super.key,
    required this.items,
    required this.selectedValue,
  });

  @override
  State<FormDropDownField> createState() => _FormDropDownFieldState();
}

class _FormDropDownFieldState extends State<FormDropDownField> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: widget.selectedValue,
      items: widget.items,
      onChanged: (newValue) {
        setState(() {
          var selectedValue = newValue!;
        });
      },
      icon: const Icon(
        Icons.keyboard_arrow_down,
      ),
      decoration: InputDecoration(
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

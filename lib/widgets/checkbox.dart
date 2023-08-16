import 'package:flutter/material.dart';

class MyCheckboxFormField extends StatefulWidget {
  final bool value;
  final String label;

  const MyCheckboxFormField({
    super.key,
    required this.value,
    required this.label,
  });

  @override
  State<MyCheckboxFormField> createState() => _MyCheckboxFormFieldState();
}

class _MyCheckboxFormFieldState extends State<MyCheckboxFormField> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: false,
      onChanged: (newValue) {
        setState(() {
          !widget.value;
        });
      },
      title: Text(
        widget.label,
        style: const TextStyle(fontSize: 14),
      ),
      controlAffinity: ListTileControlAffinity.leading,
      dense: true,
      contentPadding: EdgeInsets.zero,
    );
  }
}

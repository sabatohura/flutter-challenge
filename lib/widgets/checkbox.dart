import 'package:flutter/material.dart';

class MyCheckboxFormField extends StatelessWidget {
  final bool value;
  final String label;
  final Function(bool) onChanged;

  const MyCheckboxFormField({
    required this.value,
    required this.label,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: value,
      onChanged: onChanged,
      title: Text(label),
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}

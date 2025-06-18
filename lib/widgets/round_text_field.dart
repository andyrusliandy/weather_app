import 'package:flutter/material.dart';

import '/constants/app_colors.dart';

class RoundTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final void Function(String)? onChanged;

  const RoundTextField({
    super.key,
    this.controller,
    this.hintText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText ?? '',
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}


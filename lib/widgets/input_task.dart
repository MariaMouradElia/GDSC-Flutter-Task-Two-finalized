import 'package:flutter/material.dart';
import 'package:session_4_todo_task/constants/assets.dart';
import 'package:session_4_todo_task/utils/border_utils.dart';

class InputTask extends StatelessWidget {
final TextEditingController controller;
final TextInputType keyboardType;
final Widget? prefix;
final Widget? suffix;
final String hintText;
final bool obscureText;
final String? Function(String?) validator;

  const InputTask({super.key,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    required this.validator,
    this.prefix,
    this.suffix,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(AssetData.taskInputBackgroundColor),
        focusedBorder: BorderUtilities.getBorder(),
        errorBorder: BorderUtilities.getBorder(),
        focusedErrorBorder: BorderUtilities.getBorder(),
        enabledBorder: BorderUtilities.getBorder(),
        hintText: hintText,
        prefixIcon: prefix,
        suffixIcon:suffix,
      ),
      obscureText: obscureText,
      validator: validator,
    );
  }
}
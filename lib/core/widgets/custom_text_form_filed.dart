import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({
    super.key,
    required this.controller,
    required this.hint,
    this.onChanged,
    this.validator,
    this.isObscureText = false,
    this.keyboardType = TextInputType.text,
  });
  final TextEditingController controller;
  final Function(String? value)? onChanged;
  final String? Function(String?)? validator;
  final bool isObscureText;
  final TextInputType keyboardType;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      maxLines: 1,
      validator: validator,
      obscureText: isObscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(hintText: hint),
      cursorColor: Colors.black,
      cursorRadius: Radius.circular(20),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shopx/core/components/custom_text_form_field.dart';
import 'package:shopx/core/theme/app_colors.dart';

class CustomAuthTextField extends StatelessWidget {
  const CustomAuthTextField({
    super.key,
    this.suffixIcon,
    this.suffixPressed,
    this.obscureText,
    required this.onSaved,
    required this.hintText,
    required this.labelText,
    required this.prefixIcon,
    required this.validator,
    required this.keyboardType,
  });

  final String hintText, labelText;
  final Function(String?) validator, onSaved;
  final IconData? prefixIcon, suffixIcon;
  final TextInputType keyboardType;
  final Function()? suffixPressed;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: hintText,
      labelText: labelText,
      textColor: blackColor,
      hintColor: blackColor,
      labelColor: blackColor,
      cursorColor: blackColor,
      fillColor: whiteColor,
      enabledColor: whiteColor70,
      focusedColor: greenColor,
      onSaved: onSaved,
      keyboardType: keyboardType,
      validator: validator,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      suffixPressed: suffixPressed,
      obscureText: obscureText,
    );
  }
}

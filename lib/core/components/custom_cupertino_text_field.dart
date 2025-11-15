import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopx/core/theme/app_colors.dart';

class CustomCupertinoTextField extends StatelessWidget {
  final String placeholder;
  final TextEditingController? controller;
  final int maxLines;
  final TextInputType keyboardType;
  final BoxDecoration decoration;
  final double padding;
  final bool obscureText;
  final Iterable<String>? autofillHints;

  const CustomCupertinoTextField({
    super.key,
    required this.placeholder,
    this.controller,
    this.maxLines = 1,
    this.keyboardType = TextInputType.text,
    required this.decoration,
    this.padding = 12,
    this.obscureText = false,
    this.autofillHints,
  });

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    return CupertinoTextField(
      controller: controller,
      padding: EdgeInsets.all(padding),
      placeholder: placeholder,
      maxLines: maxLines,
      keyboardType: keyboardType,
      decoration: decoration,
      obscureText: obscureText,
      autofillHints: autofillHints,
      cursorColor: appColors.primaryColor,
      style: TextStyle(
        color: appColors.primaryColor,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      ),
      placeholderStyle: TextStyle(
        color: appColors.primaryColor.withAlpha(100),
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
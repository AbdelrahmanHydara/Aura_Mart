import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopx/core/components/custom_button.dart';
import 'package:shopx/core/theme/app_colors.dart';

class CustomButtonAuth extends StatelessWidget {
  const CustomButtonAuth({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: text,
      onPressed: onPressed,
      backgroundColor: Colors.transparent,
      textColor: whiteColor,
      borderColor: whiteColor70,
      borderRadius: 16.r,
    );
  }
}

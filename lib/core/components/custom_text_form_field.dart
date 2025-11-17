import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopx/core/theme/app_colors.dart';

class CustomTextFormField extends StatelessWidget {

  final EdgeInsetsGeometry? contentPadding;
  final String hintText, labelText;
  final Widget? suffixIcon, prefixIcon;
  final InputBorder? focusedBorder, enabledBorder;
  final bool? obscureText;
  final TextStyle? hintStyle, style;
  final Color? fillColor;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final Function(String?) validator;
  final int? maxLines;
  final void Function(String?)? onSaved;

  const CustomTextFormField({
    super.key,
    this.contentPadding,
    this.suffixIcon,
    this.focusedBorder,
    this.enabledBorder,
    this.obscureText,
    this.hintStyle,
    this.style,
    this.fillColor,
    this.maxLines,
    this.onSaved,
    this.controller,
    this.prefixIcon,
    required this.hintText,
    required this.validator,
    required this.keyboardType,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    return TextFormField(
      onSaved: onSaved,
      controller: controller,
      maxLines: maxLines ?? 1,
      style: style ?? TextStyle(
        color: appColors.primaryColor,
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
      ),
      obscureText: obscureText ?? false,
      validator: (value) => validator(value),
      keyboardType: keyboardType,
      cursorColor: appColors.primaryColor,
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: fillColor ?? appColors.primaryColor.withAlpha(50),
        hintText: hintText,
        labelText: labelText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        contentPadding: contentPadding ?? EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: 10.h,
        ),
        hintStyle: hintStyle ?? TextStyle(
          color: appColors.primaryColor.withAlpha(100),
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        ),
        labelStyle: TextStyle(
            color: appColors.primaryColor.withAlpha(100),
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
        focusedBorder: focusedBorder ?? _buildOutlineInputBorder(
          color: appColors.primaryColor.withAlpha(100),
        ),
        enabledBorder: enabledBorder ?? _buildOutlineInputBorder(
          color: appColors.primaryColor.withAlpha(100),
        ),
        errorBorder: _buildOutlineInputBorder(),
        focusedErrorBorder: _buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder _buildOutlineInputBorder({
    Color? color,
  }) {
    return OutlineInputBorder(
        borderSide: BorderSide(
          color: color ?? Colors.red,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(16.r),
      );
  }
}
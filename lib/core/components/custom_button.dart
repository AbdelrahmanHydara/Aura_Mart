import 'package:flutter/material.dart';
import 'package:shopx/core/theme/app_colors.dart';
import 'custom_container.dart';
import 'custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double? width, height, borderRadius, fontSize, letterSpacing;
  final bool isLoading, arrow;
  final Color backgroundColor;
  final FontWeight? fontWeight;
  final Color? borderColor, textColor, arrowColor;
  final EdgeInsetsGeometry? padding;
  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.width,
    this.height = 45,
    this.isLoading = false,
    required this.backgroundColor,
    this.borderRadius,
    this.fontSize,
    this.fontWeight,
    this.arrow = false,
    this.borderColor,
    this.letterSpacing,
    this.padding,
    this.textColor,
    this.arrowColor,
  });

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    return GestureDetector(
      onTap: onPressed,
      child: CustomContainer(
        width: width!.w,
        height: height!.h,
        borderColor: borderColor,
        radius: borderRadius ?? 9,
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 20,vertical: 7),
        color: backgroundColor ?? appColors.primaryColor,
        child: Row(
          mainAxisAlignment: arrow == true ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if(arrow)...[
              const SizedBox.shrink(),
            ],

            TextWidgets.subHeading(text , fontWeight: fontWeight,fontSize: fontSize ?? 15,color: textColor),

            if(arrow)...[
              Icon(Icons.arrow_forward,color: arrowColor ?? appColors.secondaryColor),
            ]

          ],
        ),
      ),
    );
  }
}

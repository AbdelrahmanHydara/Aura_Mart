import 'package:aura_mart/core/components/custom_text.dart';
import 'package:aura_mart/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListName extends StatelessWidget {
  const ListName({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 8.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidgets.bodyText1(text,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: appColors.primaryColor,
          ),
          TextWidgets.bodyText3(
              "See all",
              fontSize: 14.sp,
              color: Colors.blue.shade800,
              fontWeight: FontWeight.w900,
          ),
        ],
      ),
    );
  }
}
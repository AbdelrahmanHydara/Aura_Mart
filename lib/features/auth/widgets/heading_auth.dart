import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopx/core/components/custom_text.dart';
import 'package:shopx/core/helpers/spacing.dart';
import 'package:shopx/core/theme/app_colors.dart';

class HeadingAuth extends StatelessWidget {
  const HeadingAuth({super.key,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextWidgets.heading(
            "ShopX",
          color: whiteColor,
          fontSize: 80.sp,
        ),
        TextWidgets.subHeading(
          "Welcome to ShopX, Let's get started!",
          color: whiteColor70,
          fontSize: 12.sp,
        ),
        verticalSpace(38),
      ],
    );
  }
}

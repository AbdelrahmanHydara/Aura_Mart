import 'package:flutter/material.dart';
import 'package:shopx/core/components/custom_text.dart';
import 'package:shopx/core/helpers/spacing.dart';
import 'package:shopx/core/theme/app_colors.dart';

class HeadingStartAuth extends StatelessWidget {
  const HeadingStartAuth({super.key,});

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    return Column(
      children: [
        verticalSpace(28),
        TextWidgets.heading(
            "ShopX",
          color: appColors.primaryColor,
          fontSize: 50,
        ),
        verticalSpace(10),
        TextWidgets.subHeading(
          "Welcome to ShopX, Let's get started!",
          textAlign: TextAlign.center,
          color: Colors.grey.withAlpha(200),
          fontWeight: FontWeight.w500,
        ),
        verticalSpace(32),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shopx/core/theme/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    return Divider(
      color: appColors.primaryColor.withAlpha(100),
      thickness: 2,
    );
  }
}

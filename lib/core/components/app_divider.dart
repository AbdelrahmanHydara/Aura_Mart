import 'package:flutter/material.dart';
import 'package:shopx/core/theme/app_colors.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    return Divider(
      color: appColors.primaryColor.withAlpha(100),
      thickness: 2,
    );
  }
}

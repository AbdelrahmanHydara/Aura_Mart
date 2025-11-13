import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopx/core/helpers/extensions.dart';
import 'package:shopx/core/routing/routes.dart';
import 'package:shopx/core/theme/app_colors.dart';
import 'package:shopx/core/theme/app_text_styles.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key,});

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    return CupertinoTextField(
      readOnly: true,
      onTap: () => context.pushNamed(Routes.searchScreen),
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 10.h,
      ),
      placeholder: "Search for Games, Phones, AirPods, and more",
      placeholderStyle: AppTextStyles.regular14.copyWith(
        color: appColors.primaryColor.withAlpha(100),
      ),
      prefix: const Padding(
        padding: EdgeInsets.only(
          left: 12,
        ),
        child: Icon(
          CupertinoIcons.search,
          size: 18,
        ),
      ),
      decoration: BoxDecoration(
        color: appColors.searchColor,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: appColors.primaryColor.withAlpha(35),
        ),
      ),
    );
  }
}

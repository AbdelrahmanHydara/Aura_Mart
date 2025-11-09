import 'package:aura_mart/core/components/custom_text.dart';
import 'package:aura_mart/core/helpers/spacing.dart';
import 'package:aura_mart/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryRoundedWidget extends StatelessWidget {
  const CategoryRoundedWidget({
    super.key,
    required this.image,
    required this.name,
  });
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    return GestureDetector(
      // onTap: () => Navigator.pushNamed(
      //   context,
      //   CategoryItems.routName,
      //   arguments: name,
      // ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 12.w,
            ),
            child: Container(
              width: 60.w,
              height: 60.h,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                shape: BoxShape.circle,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300.r),
                child: Image.network(
                  image,
                  width: 60.w,
                  height: 69.h,
                ),
              ),
            ),
          ),
          verticalSpace(15),
          TextWidgets.bodyText1(name,
            fontSize: 10.sp,
            color: appColors.primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopx/core/helpers/spacing.dart';
import 'package:shopx/core/theme/app_colors.dart';

import 'custom_text.dart';

class CustomSocialButton extends StatelessWidget {
  const CustomSocialButton({
    super.key,
    required this.text,
    required this.imagePath,
    required this.onPressed,
  });

  final void Function()? onPressed;
  final String text, imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: Colors.grey, width: 1.w),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
                height: 20.h,
                image: AssetImage(imagePath),
            ),
            horizontalSpace(10),
            TextWidgets.subHeading(
              text,
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: whiteColor,
            ),
          ],
        ),
      ),
    );
  }
}

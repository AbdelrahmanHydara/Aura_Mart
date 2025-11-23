import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopx/core/components/custom_text.dart';

class HeadingStartAuth extends StatelessWidget {
  const HeadingStartAuth({super.key,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 24.h,
      ),
      child: Column(
        children: [
          TextWidgets.heading(
              "ShopX",
            color: Colors.black,
            fontSize: 52.sp,
          ),
          TextWidgets.subHeading(
            "Welcome to ShopX, Let's get started!",
            textAlign: TextAlign.center,
            color: Colors.grey.withAlpha(200),
            fontWeight: FontWeight.w500,
            fontSize: 12.sp,
          ),
        ],
      ),
    );
  }
}

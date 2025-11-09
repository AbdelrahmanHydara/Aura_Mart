import 'package:aura_mart/core/components/custom_container.dart';
import 'package:aura_mart/core/components/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      // onTap: () => Navigator.pushNamed(
      //   context,
      //   // CategoryItems.routName,
      //   arguments: text,
      // ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 2.w,
        ),
        child: CustomContainer(
          radius: 30.r,
          color: Colors.grey.withAlpha(30),
          padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 6.w,
          ),
          child: TextWidgets.bodyText(text,
              fontSize: 11.sp,
              fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
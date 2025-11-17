import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopx/core/components/custom_button.dart';
import 'package:shopx/core/helpers/spacing.dart';

class SwitchAuthButton extends StatelessWidget {
  const SwitchAuthButton({
    super.key,
    required this.isLogin,
    required this.onToggle,
  });

  final bool isLogin;
  final Function(bool) onToggle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Card(
            elevation: 8,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: CustomButton(
              onPressed: () => onToggle(false),
              text: "Login",
              textColor: isLogin ? Colors.black54 : Colors.white,
              borderRadius: 16.r,
              height: 38.h,
              backgroundColor: !isLogin ? Colors.teal.withAlpha(200) : Colors.grey.withAlpha(50),
              borderColor: !isLogin ? Colors.teal.withAlpha(200) : Colors.grey.withAlpha(60),
            ),
          ),
        ),
        horizontalSpace(10),
        Expanded(
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: CustomButton(
              onPressed: () => onToggle(true),
              text: "Register",
              textColor: !isLogin ? Colors.black54 : Colors.white,
              height: 38.h,
              borderRadius: 16.r,
              backgroundColor: isLogin ? Colors.teal.withAlpha(200) : Colors.grey.withAlpha(50),
              borderColor: isLogin ? Colors.teal.withAlpha(200) : Colors.grey.withAlpha(60),
            ),
          ),
        ),
      ],
    );
  }
}

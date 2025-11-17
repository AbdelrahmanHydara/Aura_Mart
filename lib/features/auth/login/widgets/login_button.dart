import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopx/core/components/custom_button.dart';
import 'package:shopx/core/helpers/extensions.dart';
import 'package:shopx/core/routing/routes.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        child: CustomButton(
          onPressed: () => context.pushReplacementNamed(Routes.rootScreen),
          text: "Login",
          textColor: Colors.white,
          borderRadius: 16.r,
          backgroundColor: Colors.teal.withAlpha(200),
        ),
      ),
    );
  }
}

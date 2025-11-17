import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopx/core/components/custom_button.dart';
import 'package:shopx/core/helpers/extensions.dart';
import 'package:shopx/core/routing/routes.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: CustomButton(
          onPressed: () => context.pushReplacementNamed(Routes.rootScreen),
          text: "Register",
          textColor: Colors.white,
          borderRadius: 16.r,
          backgroundColor: Colors.teal.withAlpha(200),
        ),
      ),
    );
  }
}

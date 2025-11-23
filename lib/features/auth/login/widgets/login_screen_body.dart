import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopx/core/components/custom_text.dart';
import 'package:shopx/core/helpers/spacing.dart';
import 'login_button.dart';
import 'login_text_form_field.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const LoginTextFormField(),
          verticalSpace(4),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {  },
              child: TextWidgets.bodyText1(
                "Forgot Password ?",
                color: Colors.blue,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const LoginButton(),
          verticalSpace(18),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWidgets.subHeading2(
                "Don't have an account ?",
              ),
              horizontalSpace(6),
              TextWidgets.subHeading1(
                "Register",
                color: Colors.blue,
              ),

            ],
          ),
        ],
      ),
    );
  }
}



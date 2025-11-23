import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopx/core/helpers/spacing.dart';
import 'package:shopx/features/auth/login/login_screen.dart';
import 'package:shopx/features/auth/register/screens/register_screen.dart';
import 'heading_start_auth.dart';
import 'switch_auth_button.dart';

class StartAuthBodyScreen extends StatefulWidget {
  const StartAuthBodyScreen({super.key});

  @override
  State<StartAuthBodyScreen> createState() => _StartAuthBodyScreenState();
}

class _StartAuthBodyScreenState extends State<StartAuthBodyScreen> {
  bool isLogin = true; // false = Register, true = Login

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 30.h,
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 20,
                offset: const Offset(2,4),
              ),
            ],
          ),
          child: Column(
            children: [
              const HeadingStartAuth(),
              SwitchAuthButton(
                isLogin: isLogin,
                onToggle: (value) {
                  setState(() {
                    isLogin = value;
                  });
                },
              ),
              verticalSpace(28),
              Expanded(
                child: isLogin ? const RegisterScreen() : const LoginScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

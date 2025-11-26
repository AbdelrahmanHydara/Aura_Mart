import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopx/core/components/custom_social_button.dart';
import 'package:shopx/core/helpers/spacing.dart';
import 'package:shopx/features/auth/login/cubit/login_cubit.dart';

class LoginSocialButton extends StatelessWidget {
  const LoginSocialButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();
    return Column(
      children: [
        CustomSocialButton(
          text: 'Login with Google',
          imagePath: 'assets/images/logos/google_logo.png',
          onPressed: () => cubit.loginUserWithGoogle(),
        ),
        verticalSpace(16),
        CustomSocialButton(
          text: 'Login with Facebook',
          imagePath: 'assets/images/logos/facebook_logo.png',
          onPressed: () => cubit.loginUserWithFacebook(),
        ),
      ]
    );
  }
}

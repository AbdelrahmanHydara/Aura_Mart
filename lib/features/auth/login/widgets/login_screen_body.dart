import 'package:flutter/material.dart';
import 'package:shopx/core/helpers/spacing.dart';
import 'package:shopx/features/auth/widgets/heading_auth.dart';
import 'forgot_password.dart';
import 'login_button.dart';
import 'login_social_button.dart';
import 'login_text_form_field.dart';
import 'register_button_on_login_screen.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          verticalSpace(70),
          const HeadingAuth(),
          const LoginTextFormField(),
          verticalSpace(4),
          const ForgotPassword(),
          const LoginButton(),
          verticalSpace(20),
          const RegisterButtonOnLoginScreen(),
          verticalSpace(20),
          const LoginSocialButton(),
        ],
      ),
    );
  }
}


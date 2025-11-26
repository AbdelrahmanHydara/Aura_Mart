import 'package:flutter/material.dart';
import 'package:shopx/core/helpers/spacing.dart';
import 'package:shopx/features/auth/register/screens/widgets/login_button_on_register_screen.dart';
import 'package:shopx/features/auth/widgets/heading_auth.dart';
import 'register_button.dart';
import 'register_text_form_field.dart';

class RegisterScreenBody extends StatelessWidget {
  const RegisterScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          verticalSpace(70),
          const HeadingAuth(),
          const RegisterTextFormField(),
          verticalSpace(28),
          const RegisterButton(),
          verticalSpace(20),
          const LoginButtonOnRegisterScreen(),
        ],
      ),
    );
  }
}

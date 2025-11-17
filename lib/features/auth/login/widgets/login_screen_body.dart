import 'package:flutter/material.dart';
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
          verticalSpace(28),
          const LoginButton(),
        ],
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:shopx/core/components/custom_text.dart';
import 'package:shopx/core/helpers/spacing.dart';
import 'register_button.dart';
import 'register_text_form_field.dart';

class RegisterScreenBody extends StatelessWidget {
  const RegisterScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        const RegisterTextFormField(),
        verticalSpace(28),
        const RegisterButton(),
        verticalSpace(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidgets.subHeading1(
              "Already have an account ?",
            ),
            horizontalSpace(6),
            TextWidgets.subHeading1(
              "Login",
              color: Colors.blue,
            ),

          ],
        ),
      ],
    );
  }
}

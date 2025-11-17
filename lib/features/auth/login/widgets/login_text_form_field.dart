import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopx/core/components/custom_text_form_field.dart';
import 'package:shopx/core/helpers/app_validators.dart';
import 'package:shopx/core/helpers/spacing.dart';

class LoginTextFormField extends StatefulWidget {
  const LoginTextFormField({super.key});

  @override
  State<LoginTextFormField> createState() => _LoginTextFormFieldState();
}

class _LoginTextFormFieldState extends State<LoginTextFormField> {

  final formKey = GlobalKey<FormState>();
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          verticalSpace(20),
          CustomTextFormField(
            hintText:"Please enter your email",
            labelText: "Email",
            prefixIcon: Icon(
              CupertinoIcons.mail,
            ),
            fillColor: Colors.grey.withAlpha(20),
            keyboardType: TextInputType.emailAddress,
            validator: (value) => AppValidators.name(value),
          ),
          verticalSpace(20),
          CustomTextFormField(
            hintText: "Please enter your password",
            labelText: "Password",
            obscureText: true,
            prefixIcon: Icon(
              CupertinoIcons.lock,
            ),
            suffixIcon: Icon(
              isPasswordVisible ? CupertinoIcons.eye : CupertinoIcons.eye_slash,
            ),
            fillColor: Colors.grey.withAlpha(20),
            keyboardType: TextInputType.visiblePassword,
            validator: (value) => AppValidators.password(value),
          ),
        ],
      ),
    );
  }
}

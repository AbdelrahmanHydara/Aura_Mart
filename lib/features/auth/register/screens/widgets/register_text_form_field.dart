import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopx/core/helpers/app_validators.dart';
import 'package:shopx/core/helpers/spacing.dart';
import 'package:shopx/features/auth/register/cubit/register_cubit.dart';
import 'package:shopx/features/auth/widgets/custom_auth_text_field.dart';

class RegisterTextFormField extends StatelessWidget {
  const RegisterTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();
    return Form(
      key: cubit.formKey,
      autovalidateMode: cubit.autoValidateMode,
      child: Column(
        children: [
          verticalSpace(20),
          CustomAuthTextField(
            hintText: "Please enter your full name",
            labelText: "Name",
            onSaved: (value) => cubit.name = value!,
            prefixIcon: cubit.prefixIconName,
            keyboardType: TextInputType.name,
            validator: AppValidators.nameValidator,
          ),
          verticalSpace(20),
          CustomAuthTextField(
            hintText: "Please enter your email",
            labelText: "Email",
            onSaved: (value) => cubit.email = value!,
            prefixIcon: cubit.prefixIconEmail,
            keyboardType: TextInputType.emailAddress,
            validator: AppValidators.emailValidator,
          ),
          verticalSpace(20),
          BlocBuilder<RegisterCubit, RegisterState>(
            builder: (context, state) {
              return CustomAuthTextField(
                hintText: "Please enter your password",
                labelText: "Password",
                onSaved: (value) => cubit.password = value!,
                obscureText: cubit.isPasswordVisible,
                prefixIcon: cubit.prefixIconPassword,
                suffixIcon: cubit.suffixIconPassword,
                suffixPressed: () => cubit.changePasswordVisibility(),
                keyboardType: TextInputType.visiblePassword,
                validator: AppValidators.passwordValidator,
              );
            },
          ),
        ],
      ),
    );
  }
}
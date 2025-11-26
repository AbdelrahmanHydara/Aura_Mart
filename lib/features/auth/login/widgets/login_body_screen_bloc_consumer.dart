import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopx/core/helpers/extensions.dart';
import 'package:shopx/core/helpers/show_app_toast.dart';
import 'package:shopx/core/routing/routes.dart';
import 'package:shopx/features/auth/login/cubit/login_cubit.dart';
import 'login_screen_body.dart';

class LoginBodyScreenBlocConsumer extends StatelessWidget {
  const LoginBodyScreenBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          showAppToast(message: "Login Successfully", bgColor: Colors.green.shade500);
          context.pushReplacementNamed(Routes.rootScreen);
        }
        if (state is LoginError) {
          showAppToast(message: state.errorMessage, bgColor: Colors.red);
        }
      },
      builder: (context, state) {
        return LoginScreenBody();
      },
    );
  }
}

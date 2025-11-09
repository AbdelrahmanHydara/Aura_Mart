import 'package:aura_mart/core/routing/app_router.dart';
import 'package:aura_mart/core/routing/routes.dart';
import 'package:aura_mart/core/theme/logic/theme_cubit.dart';
import 'package:aura_mart/core/theme/logic/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShopX extends StatelessWidget {

  const ShopX({super.key,});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(380, 820),
      minTextAdapt: true,
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          final theme = (state as ThemeInitial).themeData;
          return AnimatedTheme(
            data: theme,
            duration: const Duration(milliseconds: 300),
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: theme,
              initialRoute: Routes.homeScreen,
              onGenerateRoute: AppRouter.generateRoute,
            ),
          );
        },
      ),
    );
  }
}
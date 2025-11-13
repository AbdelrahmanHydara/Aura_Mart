import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopx/core/routing/app_router.dart';
import 'package:shopx/core/routing/routes.dart';
import 'package:shopx/core/theme/logic/theme_cubit.dart';
import 'package:shopx/core/theme/logic/theme_state.dart';

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
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: theme,
            initialRoute: Routes.rootScreen,
            onGenerateRoute: AppRouter.generateRoute,
          );
        },
      ),
    );
  }
}
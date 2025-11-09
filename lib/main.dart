import 'package:aura_mart/shopx.dart';
import 'package:aura_mart/core/theme/logic/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      BlocProvider(
          create: (_) => ThemeCubit(),
          child: const ShopX(),
      ),
  );
}

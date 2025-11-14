import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopx/core/theme/logic/theme_cubit.dart';
import 'package:shopx/shopx.dart';

import 'core/helpers/supabase_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SupabaseHelper.initializeSupabase();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    BlocProvider(
          create: (_) => ThemeCubit(),
          child: const ShopX(),
      ),
  );
}

import 'package:aura_mart/features/home/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'routes.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch(settings.name)
    {
      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (_) => const HomeScreen()
        );
    }
    return null;
  }
}
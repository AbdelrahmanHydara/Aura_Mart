import 'package:flutter/material.dart';
import 'package:shopx/features/home/screens/home_screen.dart';
import 'package:shopx/features/root_screen.dart';
import 'package:shopx/features/search/screens/search_screen.dart';
import 'routes.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch(settings.name)
    {
      case Routes.rootScreen:
        return MaterialPageRoute(
            builder: (_) => const RootScreen()
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (_) => const HomeScreen()
        );
      case Routes.searchScreen:
        return MaterialPageRoute(
            builder: (_) => const SearchScreen()
        );
    }
    return null;
  }
}
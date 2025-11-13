import 'package:flutter/material.dart';
import 'package:shopx/features/home/screens/widgets/home_appbar.dart';
import 'widgets/home_body_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const HomeAppBar(),
      body: const HomeBodyScreen(),
    );
  }
}


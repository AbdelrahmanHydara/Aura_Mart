import 'package:flutter/material.dart';
import 'package:shopx/features/home/screens/widgets/home_appbar.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'widgets/home_screen_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _enabled = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _enabled = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const HomeAppBar(),
      body: Skeletonizer(
        enabled: _enabled,
        enableSwitchAnimation: true,
          child: const HomeScreenBody(),
      ),
    );
  }
}


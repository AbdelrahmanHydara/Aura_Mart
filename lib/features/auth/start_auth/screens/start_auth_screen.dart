import 'package:flutter/material.dart';
import 'package:shopx/features/auth/start_auth/screens/widgets/start_auth_body_screen.dart';

class StartAuthScreen extends StatelessWidget {
  const StartAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: StartAuthBodyScreen(),
    );
  }
}


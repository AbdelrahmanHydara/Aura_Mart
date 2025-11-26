import 'package:flutter/material.dart';
import 'package:shopx/core/components/custom_button.dart';
import 'package:shopx/core/helpers/extensions.dart';
import 'package:shopx/core/routing/routes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          children: [
            CustomButton(
              onPressed: () => context.pushNamed(Routes.loginScreen),
                text: "Go to Login",
                backgroundColor: Colors.blue,
            ),
            Text(
              'Profile Screen',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}

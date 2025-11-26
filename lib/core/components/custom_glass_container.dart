import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGlassContainer extends StatelessWidget {
  const CustomGlassContainer({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomLeft,
      children: [
        Positioned.fill(
          child: IgnorePointer(
            child: Opacity(
              opacity: 0.6,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.green.withAlpha(100),
                Colors.green.withAlpha(10),
                Colors.green.withAlpha(10),
              ],
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: 8,
                sigmaY: 10,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              color: Colors.white.withAlpha(20),
              child: child,
            ),
          ),
        ),
      ],
    );
  }
}
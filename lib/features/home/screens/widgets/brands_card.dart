import 'package:flutter/material.dart';
import 'package:shopx/core/components/custom_container.dart';
import 'package:shopx/core/theme/app_colors.dart';

class BrandsCard extends StatelessWidget {
  const BrandsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: greenColor,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 14),
          child: Row(
            spacing: 20,
            children: List.generate(5, (index) =>
                Image.asset(
                    "assets/images/logo.png",
                    width: 22,
                    color: whiteColor,
                ),
            ),
          ),
        ),
      ),
    );
  }
}
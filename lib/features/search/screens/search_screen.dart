import 'package:flutter/material.dart';
import 'package:shopx/core/components/custom_button.dart';
import 'package:shopx/core/components/custom_text.dart';
import 'package:shopx/core/helpers/spacing.dart';
import 'package:shopx/core/theme/app_colors.dart';
import 'widgets/search_body_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchBodyScreen(),
    );
  }
}


class EmptyBagWidget extends StatelessWidget {
  const EmptyBagWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.buttonTitle,
    required this.isCart,
  });

  final String title, subTitle, buttonTitle;
  final bool isCart;

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    return Center(
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidgets.heading(
                title,
                fontSize: 18,
                color: appColors.primaryColor
            ),
            verticalSpace(10),
            TextWidgets.subHeading(
              subTitle,
              fontSize: 15,
              color: Colors.grey.shade600,
            ),
            verticalSpace(30),
            Image.asset(
              isCart ? "PhotoLink.emptyCart" : "PhotoLink.emptyOrder",
              height: 140,
            ),
            verticalSpace(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomButton(
                text: "Go To Shopping",
                textColor: appColors.secondaryColor,
                backgroundColor: appColors.primaryColor,
                arrowColor: appColors.secondaryColor,
                fontWeight: FontWeight.bold,
                arrow: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'dart:ui';
import 'package:aura_mart/core/components/custom_text.dart';
import 'package:aura_mart/core/helpers/spacing.dart';
import 'package:aura_mart/core/theme/app_colors.dart';
import 'package:aura_mart/core/theme/app_text_styles.dart';
import 'package:aura_mart/core/theme/logic/theme_cubit.dart';
import 'package:aura_mart/features/home/screens/home_screen.dart';
import 'package:aura_mart/features/home/screens/widgets/home_categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const HomeAppBar({super.key}): preferredSize = const Size.fromHeight(140);

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    return AppBar(
      backgroundColor: appColors.secondaryColor.withAlpha(450),
      toolbarHeight: preferredSize.height,
      scrolledUnderElevation: 0,
      leadingWidth: 0,
      leading: const SizedBox.shrink(),
      flexibleSpace: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
              sigmaX: 20,
              sigmaY : 20,
          ),
          child: Container(
              color: Colors.transparent,
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 4,
            ),
            child: Row(
              children: [
                TextWidgets.heading(
                  "ShopX",
                  color: appColors.primaryColor,
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () => context.read<ThemeCubit>().toggleTheme(),
                  child: Icon(
                    Icons.brightness_6_rounded,
                    color: appColors.primaryColor,
                  ),
                ),
                horizontalSpace(15),
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (c) => const HomeScreen())),
                  child: const Badge(
                    smallSize: 10,
                    backgroundColor: Colors.red,
                    child: Icon(
                        Icons.favorite_border,
                    ),
                  ),
                ),
              ],
            ),
          ),
          verticalSpace(10),
          CupertinoTextField(
            readOnly: true,
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (c) => const HomeScreen())),
            padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 12,
            ),
            placeholder: "Phones, Games , Airpods and More",
            placeholderStyle: AppTextStyles.regular14.copyWith(color: appColors.primaryColor.withAlpha(100),),
            prefix: const Padding(
              padding: EdgeInsets.only(
                  left: 10,
              ),
              child: Icon(
                CupertinoIcons.search,
                size: 18,
              ),
            ),
            decoration: BoxDecoration(
              color: appColors.searchColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: appColors.primaryColor.withAlpha(50),
              ),
            ),
            focusNode: FocusNode(),
          ),
          verticalSpace(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.zero,
            child: Row(
              children: List.generate(
                7,
                    (index) =>  HomeCategories(text: "Smart Watch"),
              ),
            ),
          ),
          verticalSpace(10),
        ],
      ),
    );
  }
}
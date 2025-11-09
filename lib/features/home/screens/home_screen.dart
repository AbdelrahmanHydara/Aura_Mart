import 'package:aura_mart/core/helpers/spacing.dart';
import 'package:aura_mart/features/home/screens/widgets/banner_card.dart';
import 'package:aura_mart/features/home/screens/widgets/category_widget.dart';
import 'package:aura_mart/features/home/screens/widgets/home_appbar.dart';
import 'package:aura_mart/features/home/screens/widgets/list_name.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const HomeAppBar(),
      body: Column(
        children: [
          verticalSpace(180),
          BannerCard(),
          verticalSpace(30),
          CarouselSlider.builder(
            itemCount: 7,
            options:  CarouselOptions(
              height: 100.h,
              autoPlay: true,
              enlargeCenterPage: false,
              pageSnapping: true,
              viewportFraction: 0.2,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration : const Duration(seconds: 1),
              autoPlayCurve: Curves.easeIn,
            ),
            disableGesture: true,
            itemBuilder: (BuildContext context, int index, int pageViewIndex) {
              return CategoryRoundedWidget(
                image: "https://elhodatell.com/wp-content/uploads/2025/09/Apple-Watch-Series-9-Smart-Watch-41mm.png",
                name: "Smart Watch",
              );
            },
          ),
          verticalSpace(30),
          const ListName(text: "Recommended For You"),
        ],
      ),
    );
  }
}

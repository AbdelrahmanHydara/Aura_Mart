import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 20.w,
      ),
      child: CarouselSlider.builder(
        disableGesture: true,
        itemCount: 7,
        options:  CarouselOptions(
          height: 150.h,
          autoPlay: false,
          enlargeCenterPage: true,
          pageSnapping: false,
          viewportFraction: 1,
          enableInfiniteScroll: false,
          autoPlayInterval : const Duration(seconds: 2),
          autoPlayAnimationDuration : const Duration(milliseconds: 900),
          autoPlayCurve: Curves.fastLinearToSlowEaseIn,
        ),
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
            Image.network("https://marketplace.canva.com/EAE6GJRFBO8/2/0/1600w/canva-red-and-white-modern-online-sale-and-discount-banner-EQntJWpYr4w.jpg",
              height: 200.h,
            ),
      ),
    );
  }
}
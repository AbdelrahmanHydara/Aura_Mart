import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopx/core/helpers/spacing.dart';
import 'package:shopx/core/theme/app_colors.dart';
import 'package:shopx/features/home/screens/widgets/home_banner_slider.dart';
import 'package:shopx/features/home/screens/widgets/category_rounded.dart';
import 'package:shopx/features/home/screens/widgets/list_name.dart';
import 'package:shopx/features/home/screens/widgets/product_card.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          verticalSpace(198),
          const HomeBannerSlider(),
          verticalSpace(30),
          const CategoryRoundedWidget(),
          verticalSpace(16),
          verticalSpace(35),
          const ListName(
            text: "Recommended For You",
          ),
          verticalSpace(30),
          SizedBox(
            height: 280,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: List.generate(
                    10,
                        (index) => ProductCard(
                      isOffer: false,
                      offerBgColor: Colors.deepPurple.shade400,
                    ),
                  ),
                ),
              ),
            ),
          ),
          verticalSpace(30),
          Container(
            color: greenColor.withAlpha(450),
            child: Column(
              children: [
                Image.asset("assets/images/banners/banner4.gif"),
                verticalSpace(10),
                GridView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 0,
                    childAspectRatio: 0.70,
                  ),
                  itemBuilder: (context , index) => ProductCard(
                    width: 200,
                    offerBgColor: Colors.red.shade400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

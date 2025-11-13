import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopx/core/components/custom_container.dart';
import 'package:shopx/core/components/custom_heart.dart';
import 'package:shopx/core/components/custom_text.dart';
import 'package:shopx/core/helpers/spacing.dart';
import 'package:shopx/core/theme/app_colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.offerBgColor,
    this.isOffer = true,
    this.categoryName,
    this.width = 180,
  });
  final bool isOffer;
  final Color offerBgColor;
  final String? categoryName;
  final double? width;

  @override
  Widget build(BuildContext context) {
    // final productModel = Provider.of<ProductModel>(context);
    // final viewProducts = Provider.of<ViewedProductProvider>(context);
    // final cartProvider = Provider.of<CartProvider>(context);
    final appColors = Theme.of(context).extension<AppColors>()!;
    String getOffer(String oldPriceStr, String newPriceStr) {
      double? oldPrice = double.tryParse(oldPriceStr);
      double? newPrice = double.tryParse(newPriceStr);
      if (oldPrice == null || newPrice == null || oldPrice <= 0 || newPrice >= oldPrice) {
        return "0%";
      }
      double discount = ((oldPrice - newPrice) / oldPrice) * 100;
      return "${discount.toStringAsFixed(0)}%";
    }

    return GestureDetector(
      onTap: ()  {
        // viewProducts.addViewedProduct(productId: productModel.productID);
        // await Navigator.pushNamed(
        //   context,
        //   ProductDetailsScreen.routName,
        //   arguments: productModel.productID,
        // );
      },

      child: Stack(
        children: [
          Card(
            elevation: 2,
            shadowColor: Colors.grey.shade900,
            color: appColors.secondaryColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: SizedBox(
              width: width,
              child: Column(
                children: [
                  CustomContainer(
                    color: Colors.white,
                    width: double.infinity,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(12),
                      topLeft: Radius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: SizedBox(
                              height: 100,
                              width: 100,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FancyShimmerImage(
                                  imageUrl: "https://m.media-amazon.com/images/I/51QKZfyi-dL._AC_UF1000,1000_QL80_.jpg",
                                ),
                              ),
                            ),
                          ),
                        ),
                        verticalSpace(15),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        verticalSpace(10),
                        SizedBox(
                          height: 40,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: TextWidgets.bodyText1(
                              "productModel.productTitle",
                              maxLines: 2,
                              fontSize: 13,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w100,
                              color: appColors.primaryColor,
                            ),
                          ),
                        ),
                        verticalSpace(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    TextWidgets.bodyText1("AED",color: appColors.primaryColor) ,
                                    horizontalSpace(5),
                                    TextWidgets.bodyText1("product",fontSize: 17,fontWeight: FontWeight.bold,color: appColors.primaryColor),
                                  ],
                                ),
                                horizontalSpace(10),
                                TextWidgets.bodyText1("pro",decoration: TextDecoration.lineThrough,color: Colors.green.shade600,fontWeight: FontWeight.bold),
                              ],
                            ),
                          ],
                        ),
                        verticalSpace(10),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.yellow.shade400,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          child: TextWidgets.bodyText1(
                            "express",
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        verticalSpace(10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          /// offer
          if(isOffer)
            Positioned(
              top: 14,
              left: 8,
              child: Visibility(
                visible: true,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                  decoration: BoxDecoration(
                    color: offerBgColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:  TextWidgets.bodyText1(
                    "productModel.productOldPrice Offer",
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          /// heart
          Positioned(
            top: 10,
            right: 5,
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
                child: HeartButton(
                  productID: "",
                  size: 18,
                  enabledColor: Colors.red,
                ),
              ),
            ),
          ),
          /// cart
          Positioned(
            top: 97,
            right: 8,
            child: InkWell(
              onTap: () {},
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                color: Colors.white,
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
                  child: const Icon(
                    Icons.check,
                    size: 19,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          /// rating
          Positioned(
            top: 110,
            left: 8,
            child: Visibility(
              visible: true,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.black12.withAlpha(100),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.star_fill,size: 12,color: Colors.yellow.shade700),
                    horizontalSpace(5),
                    TextWidgets.bodyText1(
                      "productModel.productrating",
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
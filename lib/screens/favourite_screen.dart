import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revision_hw/screens/checkout_screen.dart';
import 'package:revision_hw/screens/details_screen.dart';
import 'package:revision_hw/utils/app_colors.dart';
import 'package:revision_hw/utils/app_images.dart';
import 'package:revision_hw/utils/app_text_style.dart';
import 'package:revision_hw/widgets/bottom_navigation_bar.dart';
import 'package:revision_hw/widgets/custom_icon_container.dart';
import 'package:revision_hw/widgets/floating_button.dart';
import 'package:revision_hw/widgets/product_conainer.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBackgroundColor,
        leading: CustomIconContainer(
          icon: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsScreen()),
              );
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
        ),
        centerTitle: true,
        title: customTextStyle(
          text: "Favourite",
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
        ),
        actions: [
          CustomIconContainer(
            icon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_bag_outlined),
            ),
          )
        ],
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.only(left: 20.w),
        child: Column(
          children: [
            const Wrap(
              children: [
                ProductContainer(
                  imageUrl: AppImages.sn1,
                  productName: "Nike Jordon",
                  productPprice: "\$58.7",
                  color1: AppColors.redColor,
                  color2: AppColors.darkBlueColor,
                ),
                ProductContainer(
                  imageUrl: AppImages.sn2,
                  productName: "Nike Air Max",
                  productPprice: "\$37.8",
                  color1: AppColors.darkBlueColor,
                  color2: AppColors.redColor,
                ),
                ProductContainer(
                  imageUrl: AppImages.sn3,
                  productName: "Nike Club Max",
                  productPprice: "\$47.7",
                  color1: AppColors.darkBlueColor,
                  color2: AppColors.blueColor,
                ),
                ProductContainer(
                  imageUrl: AppImages.sn4,
                  productName: "Nike Air Max",
                  productPprice: "\$57.6",
                  color1: AppColors.blueColor,
                  color2: AppColors.darkBlueColor,
                ),
              ],
            ),
            SizedBox(
              height: 85.h,
            ),
            FloatingButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CheckoutPage()));
                },
                icon: Icons.shopping_bag_outlined),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}

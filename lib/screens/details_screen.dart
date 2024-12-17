import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revision_hw/screens/favourite_screen.dart';
import 'package:revision_hw/utils/app_colors.dart';
import 'package:revision_hw/utils/app_images.dart';
import 'package:revision_hw/utils/app_text_style.dart';
import 'package:revision_hw/widgets/change_sneaker_container.dart';
import 'package:revision_hw/widgets/custom_button.dart';
import 'package:revision_hw/widgets/custom_icon_button_container.dart';
import 'package:revision_hw/widgets/custom_icon_container.dart';
import 'package:revision_hw/widgets/scroll_containers.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBackgroundColor,
        leading: CustomIconContainer(
          icon: IconButton(
              onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new)),
        ),
        centerTitle: true,
        title: customTextStyle(
            text: "Sneaker Shop", fontSize: 20.sp, fontWeight: FontWeight.w600),
        actions: [
          CustomIconContainer(
            icon: IconButton(
                onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined)),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15.r),
        child: Column(
          children: [
            SizedBox(
              height: 320.h,
              child: Stack(
                children: [
                  Positioned(
                    top: 20.h,
                    child: customTextStyle(
                      text: "Nike Air Max 270",
                      color: AppColors.blackColor,
                      fontSize: 31.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Positioned(
                    top: 50.h,
                    child: customTextStyle(
                      text: "Essential",
                      color: AppColors.blackColor,
                      fontSize: 31.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Positioned(
                    top: 82.h,
                    child: customTextStyle(
                      text: "Men's Shoes",
                      color: AppColors.greyColor,
                      fontSize: 20.sp,
                    ),
                  ),
                  Positioned(
                    top: 110.h,
                    child: customTextStyle(
                      text: "\$179.39",
                      color: AppColors.blackColor,
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Image.asset(AppImages.image1),
                  ),
                ],
              ),
            ),
            const ChangeSneakerContainer(),
            SizedBox(height: 10.h),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ScrollContainer(imageUrl: AppImages.image1),
                  ScrollContainer(imageUrl: AppImages.image2),
                  ScrollContainer(imageUrl: AppImages.image3),
                  ScrollContainer(imageUrl: AppImages.image4),
                  ScrollContainer(imageUrl: AppImages.image5),
                  ScrollContainer(imageUrl: AppImages.image1),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            customTextStyle(
                text:
                    "The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike........",
                color: AppColors.greyColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.w400),
            TextButton(
              iconAlignment: IconAlignment.end,
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: AppColors.mainColor,
              ),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Read More",
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400),
                  )),
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomIconButtonContainer(
                    icon: Icons.favorite_outline, screen: FavouriteScreen()),
                SizedBox(width: 6.w),
                const CustomButton()
              ],
            )
          ],
        ),
      ),
    );
  }
}

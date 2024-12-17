import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revision_hw/screens/onboard1_screen.dart';
import 'package:revision_hw/utils/app_colors.dart';
import 'package:revision_hw/utils/app_images.dart';
import 'package:revision_hw/utils/app_text_style.dart';
import 'package:revision_hw/widgets/change_screen_container.dart';
import 'package:revision_hw/widgets/custom_button_with_text.dart';
import 'package:revision_hw/widgets/place_main_image.dart';

class Onboard2Screen extends StatelessWidget {
  const Onboard2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Stack(
        children: [
          PlaceMainImage(
            top: 1.h,
            imageUrl: AppImages.image7,
          ),
          Positioned(
            top: 400.h,
            left: 40.w,
            child: customTextStyle(
              text: "Let's Start Journey\n        With Nike",
              color: Colors.white,
              fontSize: 38.sp,
            ),
          ),
          Positioned(
            top: 120.h,
            left: 260.w,
            child: Image.asset(AppImages.sign3),
          ),
          Positioned(
            top: 380.h,
            child: Opacity(
              opacity: 0.5,
              child: Image.asset(AppImages.sign4),
            ),
          ),
          Positioned(
            top: 100.h,
            left: 30.w,
            child: Image.asset(AppImages.sign6),
          ),
          Positioned(
            top: 483.h,
            left: 60.w,
            child: customTextStyle(
              text:
                  "Smart, Gorgeous & Fashionable\n        Collection Explore Now",
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          Positioned(
            top: 550.h,
            left: 100.w,
            right: 100.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ChangeScreenContainer(width: 38.r, color: Colors.white),
                ChangeScreenContainer(
                    width: 50.r, color: Colors.amber.shade700),
                ChangeScreenContainer(width: 38.r, color: Colors.white),
              ],
            ),
          ),
          CustomButtonWithText(
            Screen: const Onboard1Screen(),
            text: customTextStyle(
              text: "Next",
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

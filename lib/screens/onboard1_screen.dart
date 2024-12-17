import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revision_hw/screens/onboard2_screen.dart';
import 'package:revision_hw/utils/app_colors.dart';
import 'package:revision_hw/utils/app_images.dart';
import 'package:revision_hw/utils/app_text_style.dart';
import 'package:revision_hw/widgets/change_screen_container.dart';
import 'package:revision_hw/widgets/custom_button_with_text.dart';
import 'package:revision_hw/widgets/place_main_image.dart';

class Onboard1Screen extends StatelessWidget {
  const Onboard1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Stack(children: [
        PlaceMainImage(
          top: 120.h,
          imageUrl: AppImages.image6,
        ),
        Positioned(
            top: 90.h,
            left: 70.w,
            child: customTextStyle(
                text: "WELCOME TO\n        NIKE",
                color: Colors.white,
                fontSize: 38.sp)),
        Positioned(top: 80.h, left: 40.w, child: Image.asset(AppImages.sign1)),
        Positioned(
            top: 190.h, left: 100.w, child: Image.asset(AppImages.sign2)),
        Positioned(
            top: 310.h,
            left: 35.w,
            child: Opacity(opacity: 0.5, child: Image.asset(AppImages.sign3))),
        Positioned(
            top: 400.h,
            child: Opacity(opacity: 0.5, child: Image.asset(AppImages.sign4))),
        Positioned(
            top: 500.h,
            left: 230.w,
            child: Opacity(opacity: 0.5, child: Image.asset(AppImages.sign5))),
        Positioned(
            top: 550.h,
            left: 20.w,
            child: Opacity(opacity: 0.5, child: Image.asset(AppImages.sign6))),
        Positioned(
            top: 510.h,
            left: 100.w,
            right: 100.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ChangeScreenContainer(
                    width: 50.w, color: Colors.amber.shade700),
                ChangeScreenContainer(width: 38.w, color: Colors.white),
                ChangeScreenContainer(width: 38.w, color: Colors.white),
              ],
            )),
        CustomButtonWithText(
          Screen: const Onboard2Screen(),
          text:
              customTextStyle(text: "Get Started", fontWeight: FontWeight.w600),
        ),
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revision_hw/utils/app_colors.dart';
import 'package:revision_hw/utils/app_text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.mainColor,
            fixedSize: Size(270.w, 50.h)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
            SizedBox(width: 6.w),
            customTextStyle(
                text: "Add To Cart", color: Colors.white)
          ],
        ));
  }
}
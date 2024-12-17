import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revision_hw/utils/app_colors.dart';
import 'package:revision_hw/utils/app_text_style.dart';

class ProductContainer extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final String productPprice;
  final Color color1;
  final Color color2;

  const ProductContainer({
    super.key,
    required this.imageUrl,
    required this.color1,
    required this.color2,
    required this.productName,
    required this.productPprice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 206.h,
      margin: EdgeInsets.all(5.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.r)),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 20.h,
              width: 20.h,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.backgroundColor,
              ),
              child: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 15.w,
              ),
            ),
            Image.asset(
              imageUrl,
              width: 100.w,
              height: 100.h,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 8.h),
            customTextStyle(
              text: "BEST SELLER",
              color: AppColors.mainColor,
              fontSize: 12.sp,
            ),
            customTextStyle(
              text: productName,
              color: AppColors.blackColor,
              fontSize: 16.sp,
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customTextStyle(
                  text: productPprice,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
                Row(
                  children: [
                    Container(
                      width: 12.w,
                      height: 12.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color1,
                      ),
                    ),
                    SizedBox(width: 2.w),
                    Container(
                      width: 12.w,
                      height: 12.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color2,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

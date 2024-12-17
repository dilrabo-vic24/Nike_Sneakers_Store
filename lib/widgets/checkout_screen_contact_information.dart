import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revision_hw/utils/app_colors.dart';
import 'package:revision_hw/utils/app_text_style.dart';

class CheckoutPageContactInformationRow extends StatelessWidget {
  final IconData icon1;
  final String mainText;
  final String subText;
  final IconData icon2;
  const CheckoutPageContactInformationRow({
    super.key,
    required this.icon1,
    required this.mainText,
    required this.subText,
    required this.icon2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 40.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: AppColors.appBackgroundColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.r),
                  ),
                ),
                child: Icon(icon1),
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customTextStyle(
                    text: mainText,
                    fontSize: 14.sp,
                    color: AppColors.text4Color,
                  ),
                  customTextStyle(
                    text: subText,
                    color: AppColors.text1Color,
                    fontSize: 12.sp,
                  ),
                ],
              ),
            ],
          ),
          Icon(
            icon2,
            color: AppColors.icon1Color,
            size: 15.w,
          ),
        ],
      ),
    );
  }
}

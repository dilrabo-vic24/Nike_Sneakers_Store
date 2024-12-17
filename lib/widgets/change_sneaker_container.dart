import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revision_hw/utils/app_colors.dart';

class ChangeSneakerContainer extends StatelessWidget {
  const ChangeSneakerContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18.h,
      width: 40.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30.r)),
        color: AppColors.greyColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.arrow_back_ios_new,
            size: 10.w,
            color: Colors.white,
          ),
          Icon(
            Icons.arrow_forward_ios_outlined,
            size: 10.w,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
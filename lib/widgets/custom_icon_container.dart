import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revision_hw/utils/app_colors.dart';

// ignore: must_be_immutable
class CustomIconContainer extends StatelessWidget {
  final IconButton icon;
  Color? containerBackgroundColor;
  Color? iconColor;
  CustomIconContainer({
    super.key,
    required this.icon,
    this.containerBackgroundColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 50.w,
      decoration: BoxDecoration(
        color: containerBackgroundColor ?? Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(40.r),
        ),
      ),
      child: IconButton(
        onPressed: () {},
        icon: icon,
        color: iconColor ?? AppColors.blackColor,
      ),
    );
  }
}

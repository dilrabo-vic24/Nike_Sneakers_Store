import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revision_hw/utils/app_colors.dart';

// ignore: must_be_immutable
class CustomIconButtonContainer extends StatelessWidget {
  final Widget screen;
  final IconData icon;
  Color? containerBackgroundColor;
  Color? iconColor;
  CustomIconButtonContainer({
    super.key,
    required this.icon,
    this.containerBackgroundColor,
    this.iconColor, required this.screen,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
                  width: 50.w,
                  height: 50.h,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.greyColor),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => screen));
                      },
                      icon: const Icon(Icons.favorite_border_outlined)),
                );
  }
}
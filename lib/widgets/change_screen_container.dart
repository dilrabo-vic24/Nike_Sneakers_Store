import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangeScreenContainer extends StatelessWidget {
  final double width;
  final Color color;
  const ChangeScreenContainer({
    super.key,
    required this.width,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 5.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4.r)), color: color),
    );
  }
}
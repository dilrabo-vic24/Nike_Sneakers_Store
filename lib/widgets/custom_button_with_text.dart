import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomButtonWithText extends StatelessWidget {
  Color? backgroundColor;
  final Widget Screen;
  final Widget text;
  CustomButtonWithText({
    super.key,
    required this.text,
    required this.Screen,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 640.h,
      left: 20.w,
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Screen));
          },
          style: ElevatedButton.styleFrom(
              fixedSize: Size(320.w, 40.h),
              backgroundColor: backgroundColor ?? Colors.white),
          child: text),
    );
  }
}

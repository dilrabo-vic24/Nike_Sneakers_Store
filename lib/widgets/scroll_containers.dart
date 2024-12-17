import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScrollContainer extends StatelessWidget {
  final String imageUrl;
  const ScrollContainer({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60.w,
          height: 60.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.r)),
              color: Colors.white),
          child: Image.asset(
            imageUrl,
            height: 50.h,
            width: 50.w,
          ),
        ),
        SizedBox(width: 8.w)
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlaceMainImage extends StatelessWidget {
  final double top;
  final String imageUrl;
  const PlaceMainImage({
    super.key,
    required this.imageUrl, required this.top,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        child: Image.asset(
          width: 360.w,
          height: 500.h,
          imageUrl,
        ));
  }
}

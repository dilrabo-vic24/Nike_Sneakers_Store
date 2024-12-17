import 'package:flutter/material.dart';

class TotalPriceRow extends StatelessWidget {
  final Widget text1;
  final Widget text2;
  const TotalPriceRow({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        text1,
        text2,
      ],
    );
  }
}
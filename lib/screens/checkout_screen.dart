import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revision_hw/screens/favourite_screen.dart';
import 'package:revision_hw/screens/onboard1_screen.dart';
import 'package:revision_hw/utils/app_colors.dart';
import 'package:revision_hw/utils/app_images.dart';
import 'package:revision_hw/utils/app_text_style.dart';
import 'package:revision_hw/widgets/checkout_screen_contact_information.dart';
import 'package:revision_hw/widgets/custom_button_with_text.dart';
import 'package:revision_hw/widgets/custom_icon_container.dart';
import 'package:revision_hw/widgets/total_price_row.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.appBackgroundColor,
          leading: CustomIconContainer(
            icon: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FavouriteScreen()),
                );
              },
              icon: const Icon(Icons.arrow_back_ios_new),
            ),
          ),
          centerTitle: true,
          title: customTextStyle(
            text: "Favourite",
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: AppColors.appBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 15.w, top: 15.h, right: 15.w),
                    child: Column(
                      children: [
                        // Row(
                        //   children: [
                        //     Container(
                        //       width: 44.w,
                        //       height: 44.h,
                        //       decoration: const BoxDecoration(
                        //         shape: BoxShape.circle,
                        //       ),
                        //       child: const Icon(Icons.arrow_back_ios),
                        //     ),
                        //     SizedBox(
                        //       width: 110.w,
                        //     ),
                        //     customTextStyle(
                        //         text: "My Cart",
                        //         fontSize: 16.sp,
                        //         color: AppColors.text3Color,
                        //         fontWeight: FontWeight.w600),
                        //   ],
                        // ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10.w),
                                  child: customTextStyle(
                                      text: "Contact information",
                                      color: AppColors.text1Color,
                                      fontSize: 14.sp),
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                const CheckoutPageContactInformationRow(
                                  icon1: Icons.email_outlined,
                                  mainText: "emmanueloyiboke@gmail.com",
                                  subText: "Email",
                                  icon2: Icons.edit_outlined,
                                ),
                                const CheckoutPageContactInformationRow(
                                  icon1: Icons.phone_outlined,
                                  mainText: "+234-811-732-5298",
                                  subText: "Phone",
                                  icon2: Icons.edit_outlined,
                                ),
                                customTextStyle(
                                    text: "Address",
                                    color: AppColors.text4Color,
                                    fontSize: 14.sp),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    customTextStyle(
                                        text: "1082 Airport Road, Nigeria",
                                        color: AppColors.text1Color,
                                        fontSize: 12.sp),
                                    const Icon(
                                        Icons.keyboard_arrow_down_outlined)
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Stack(
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      height: 90.h,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10.r),
                                        ),
                                        child: Image.asset(
                                          AppImages.map,
                                          color: Colors.grey.withOpacity(0.8),
                                          colorBlendMode: BlendMode.modulate,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 18.w,
                                      left: 115.h,
                                      child: customTextStyle(
                                        text: "View Map",
                                        color: Colors.white,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Positioned(
                                      top: 45.h,
                                      left: 137.w,
                                      child: Container(
                                        width: 28.w,
                                        height: 28.h,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColors.buttonColor,
                                        ),
                                        child: const Icon(
                                          Icons.location_on_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                customTextStyle(
                                    text: "Payment Method",
                                    color: AppColors.text4Color,
                                    fontSize: 14.sp),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(AppImages.card),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            customTextStyle(
                                                text: "DbL Card",
                                                color: AppColors.text4Color,
                                                fontSize: 14.sp),
                                            customTextStyle(
                                                text: "**** **** 0696 4629",
                                                fontSize: 12.sp,
                                                color: AppColors.text1Color),
                                          ],
                                        )
                                      ],
                                    ),
                                    Icon(Icons.keyboard_arrow_down_outlined)
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    children: [
                      TotalPriceRow(
                        text1: customTextStyle(
                          text: "Subtotal",
                          color: AppColors.text1Color,
                          fontSize: 16.sp,
                        ),
                        text2: customTextStyle(
                            text: "\$753.95",
                            color: AppColors.text4Color,
                            fontSize: 16.sp),
                      ),
                      TotalPriceRow(
                        text1: customTextStyle(
                          text: "Delivery",
                          color: AppColors.text1Color,
                          fontSize: 16.sp,
                        ),
                        text2: customTextStyle(
                            text: "\$60.20",
                            color: AppColors.text4Color,
                            fontSize: 16.sp),
                      ),
                      const Divider(),
                      TotalPriceRow(
                        text1: customTextStyle(
                          text: "Total Cost",
                          color: AppColors.text4Color,
                          fontSize: 16.sp,
                        ),
                        text2: customTextStyle(
                            text: "\$814.15",
                            color: AppColors.buttonColor,
                            fontSize: 16.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomButtonWithText(
                        Screen: Onboard1Screen(),
                        backgroundColor: AppColors.mainColor,
                        text: customTextStyle(
                            text: "Add To Cart", color: Colors.white),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

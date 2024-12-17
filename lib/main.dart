import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:revision_hw/screens/checkout_screen.dart';
import 'package:revision_hw/screens/details_screen.dart';
import 'package:revision_hw/screens/favourite_screen.dart';
// import 'package:revision_hw/screens/onboard1_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: MediaQuery.of(context).size.width > 600
          ? const Size(1280, 800)
          : const Size(360, 690),
      minTextAdapt: true,
      child: const MaterialApp(
        title: 'Flutter Demo',
        home: FavouriteScreen(),
      ),
    );
  }
}

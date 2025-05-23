import 'package:ecommerce25_app/core/configure/route/app_route.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce25_app/core/utils/app_color.dart';
import 'package:ecommerce25_app/feature/home/presentation/screen/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashFruitScreen extends StatefulWidget {
  const SplashFruitScreen({super.key});

  @override
  State<SplashFruitScreen> createState() => _SplashFruitScreenState();
}


class _SplashFruitScreenState extends State<SplashFruitScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      if (mounted) {
        Navigator.pushReplacementNamed(
          context,
         AppRoute.home,
        );
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Grabber",

        style: TextStyle(
          fontFamily: "BalooDa",
          fontSize: 48.sp,
          fontWeight: FontWeight.w400,
          color: AppColor.green
        ),

        ),
      ),
    );
  }
}

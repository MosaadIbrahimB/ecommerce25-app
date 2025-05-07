import 'package:flutter/material.dart';
import 'package:ecommerce25_app/feature/home/presentation/widget/product_list_widget.dart';
import 'package:ecommerce25_app/feature/home/presentation/widget/see_all_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'carousel_slider_widget.dart';
import 'category_list_widget.dart';
class BodyHomeScreenWidget extends StatelessWidget {
  const BodyHomeScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 15.h),
              CarouselSliderWidget(),
              SizedBox(height: 15.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8).r,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CategoryListWidget(),
                    SizedBox(height: 20.w),
                    SeeAllWidget(title: "Fruits",),
                    SizedBox(height: 10.h),
                    ProductListWidget(),
                    SizedBox(height: 90.h)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

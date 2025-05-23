import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../data/model/carousel_slider_model.dart';

class ItemSliderWidget extends StatelessWidget {
  const ItemSliderWidget({super.key, this.carouselSliderModel});

  final CarouselSliderModel? carouselSliderModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 170.h,
      decoration: BoxDecoration(
         color:
            carouselSliderModel == null
                ? AppColor.green100
                : carouselSliderModel?.backColor,
        borderRadius: BorderRadius.circular(12).r,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 5.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                carouselSliderModel == null
                    ? "Up to 30% offer"
                    : carouselSliderModel!.offer,
                style: AppTextStyle.inter16BlackW700.copyWith(
                  fontSize: 20.sp,
                  color: carouselSliderModel!.colorFont,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                "Enjoy our big offer",
                style: AppTextStyle.inter16BlackW700.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.normal,
                  color: carouselSliderModel!.colorEnjoyOffer
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: carouselSliderModel!.backGroundColorButton,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: Text(
                    "Shop Now",
                    style: AppTextStyle.inter16BlackW700.copyWith(
                      fontSize: 16.sp,
                      color: carouselSliderModel!.colorFontButton
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 150.w,
            height: 120.h,
            // color: Colors.red,
            child: Image.asset(
              fit: BoxFit.fill,
              carouselSliderModel == null
                  ? "assets/images/fruit/f1.png"
                  : carouselSliderModel!.image,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/model/product_model.dart';
class CustomBadgeWidget extends StatelessWidget {
  const CustomBadgeWidget({
    super.key, required this.productModel, this.child,
  });
  final ProductModel productModel;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: badges.Badge(
        badgeAnimation: badges.BadgeAnimation.scale(
          animationDuration: Duration(milliseconds: 300),
          loopAnimation: false,
        ),
        position:badges. BadgePosition.topEnd(top: -14.h,end: -4.w),
        badgeContent: Text(
          "${productModel.count}",
          style: TextStyle(fontSize: 18.sp,color: Colors.white),
        ),

        badgeStyle: badges.BadgeStyle(
          shape: badges.BadgeShape.circle,
          badgeColor: Colors.red,
          padding: EdgeInsets.all(6).r,
          borderSide: BorderSide(
            color: Colors.green,
            width: 1.w,
          ),
        ),
        child: CircleAvatar(
          radius: 20.r,
          backgroundColor: Colors.grey[200],
          child: SizedBox(
            width: 43.w,
            height: 43.h,
            child: Image.asset(
              fit: BoxFit.fitWidth,
              productModel.image,
            ),
          ),
        ),
      ),
    );
  }
}

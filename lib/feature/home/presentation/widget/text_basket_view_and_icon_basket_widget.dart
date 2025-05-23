import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_text_style.dart';
import '../control/home/home_cubit.dart';

class TextBasketViewAndIconBasketWidget extends StatelessWidget {
  final String title;
 final bool goToCheck;

  const TextBasketViewAndIconBasketWidget({
    super.key,
    required this.title,
    this.goToCheck = false,
  });

  @override
  Widget build(BuildContext context) {
    int count = BlocProvider.of<HomeCubit>(context).calcItemInBasket();
    String check = BlocProvider.of<HomeCubit>(context).calcCheck();
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          goToCheck == false ? title : "$title ($check)",
          style: AppTextStyle.inter16BlackW700.copyWith(
            color: Colors.white,
            fontSize: 16.sp,
          ),
        ),
        SizedBox(width: MediaQuery.sizeOf(context).width * .03),
        count != 0
            ? badges.Badge(
              position: badges.BadgePosition.topEnd(top: -16.h, end: 6.w),
              badgeContent: Text(
                "$count",
                style: TextStyle(fontSize: 17.sp, color: Colors.white),
              ),
              child: SvgPicture.asset(
                "assets/images/fruit/bage.svg",
                width: 25.w,
                color: Colors.white,
              ),
            )
            : SvgPicture.asset(
              "assets/images/fruit/bage.svg",
              width: 25.w,
              color: Colors.white,
            ),
      ],
    );
  }
}

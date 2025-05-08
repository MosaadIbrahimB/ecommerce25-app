import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_text_style.dart';

class PersonCallWidget extends StatelessWidget {
  const PersonCallWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              child: Image.asset("assets/images/confirm_order/man.png"),
            ),
            SizedBox(width: 12.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "James Williams",
                  style: AppTextStyle.inter16BlackW700.copyWith(fontSize: 16.sp),
                ),
                SizedBox(height: 5.h),
                Row(
                  children: [
                    Text(
                      "Picking Orders",
                      style: AppTextStyle.inter16BlackW700.copyWith(
                        color: Color(0xff9B9B9B),
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(width: 10.h),
                    SizedBox(
                      height: 20.h,
                      width: 20.w,
                      child: Image.asset(
                        "assets/images/confirm_order/star.png",
                        width: 12.w,
                        height: 12.h,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(width: 10.w),

                    Text(
                      "4.8",
                      style: AppTextStyle.inter16BlackW700.copyWith(
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 22,
              child: Image.asset("assets/images/confirm_order/chat.png"),
            ),
            SizedBox(width: 12),
            CircleAvatar(
              radius: 22,
              child: Image.asset("assets/images/confirm_order/telephone.png"),
            ),
          ],
        ),
      ],
    );
  }
}

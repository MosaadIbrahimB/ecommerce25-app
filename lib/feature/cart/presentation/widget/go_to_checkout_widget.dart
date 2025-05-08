import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_text_style.dart';

class GoToCheckoutWidget extends StatelessWidget {
  const GoToCheckoutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.green,
        borderRadius: BorderRadius.circular(12).r,
      ),
      width: MediaQuery.sizeOf(context).width * .95,
      height: 45.h,
      child: Center(
        child: Text(
          "Go to checkout",
          style: AppTextStyle.inter16BlackW700.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TypeCreditCardWidget extends StatelessWidget {
  const TypeCreditCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 30.h,
          width: 30.w,
          child: Image.asset(
            fit: BoxFit.contain,
            "assets/images/pay/master_card.png",
          ),
        ),
        SizedBox(
          height: 30.h,
          width: 30.w,
          child: Image.asset(fit: BoxFit.contain, "assets/images/pay/visa.png"),
        ),
        SizedBox(
          height: 30.h,
          width: 30.w,
          child: Image.asset(
            fit: BoxFit.contain,
            "assets/images/pay/blue_card.png",
          ),
        ),
        SizedBox(
          height: 30.h,
          width: 30.w,
          child: Image.asset(
            fit: BoxFit.contain,
            "assets/images/pay/b_card.png",
          ),
        ),
        SizedBox(width: 10.w),
      ],
    );
  }
}

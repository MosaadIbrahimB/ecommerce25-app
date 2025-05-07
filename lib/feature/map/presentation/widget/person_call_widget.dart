import 'package:flutter/material.dart';

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
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "James Williams",
                  style: AppTextStyle.inter16BlackW700.copyWith(fontSize: 14),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      "Picking Orders",
                      style: AppTextStyle.inter16BlackW700.copyWith(
                        color: Color(0xff9B9B9B),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset(
                        "assets/images/confirm_order/star.png",
                        width: 10,
                        height: 10,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(width: 10),

                    Text(
                      "4.8",
                      style: AppTextStyle.inter16BlackW700.copyWith(
                        fontSize: 14,
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

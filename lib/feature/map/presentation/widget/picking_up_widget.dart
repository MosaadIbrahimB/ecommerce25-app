import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_style.dart';
class PickingUpWidget extends StatelessWidget {
  const PickingUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        border: Border(top: BorderSide(color: Colors.black12, width: 1)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Picking up your order...",
                    style: AppTextStyle.inter16BlackW700,
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Arriving at 11:45",
                    style: AppTextStyle.inter16BlackW700.copyWith(
                      color: Color(0xff898483),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              CircleAvatar(
                backgroundColor: Colors.black26,
                radius: 26,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.shopping_cart,
                    size: 35,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

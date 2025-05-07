import 'package:ecommerce25_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

import '../widget/div_confirmed_and_person_call_widget.dart';
import '../widget/image_ui_widget.dart';
import '../widget/picking_up_widget.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageUIWidget(),
          PickingUpWidget(),
          DivConfirmedAndPersonCallWidget(),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Tip your shopper",
              style: AppTextStyle.inter16BlackW700.copyWith(fontSize: 16),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Everyone deserve a little kindness",
              style: AppTextStyle.inter16BlackW700.copyWith(
                color: Color(0xff898483),
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                4,
                (index) => Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black26),
                  ),
                  child: Text(
                    "\$${index == 0 ? 2 : index * 5}.00",
                    style: AppTextStyle.inter16BlackW700,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}








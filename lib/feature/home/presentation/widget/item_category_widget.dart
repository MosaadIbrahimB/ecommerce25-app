import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_text_style.dart';
import '../../data/model/category_model.dart';

class ItemCategoryWidget extends StatelessWidget {
  const ItemCategoryWidget({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40.r,
          backgroundColor: Colors.grey[200],
          child: SizedBox(
            width: 60.w,
            height: 60.h,
            child: Image.asset(
              fit: BoxFit.fill,
              categoryModel.image,
            ),
          ),
        ),
        Text(categoryModel.title,
          style: AppTextStyle.inter16BlackW700.copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400
          ),
        )
      ],
    );
  }
}

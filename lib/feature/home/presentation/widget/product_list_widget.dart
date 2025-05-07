import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/repo/repo.dart';
import 'item_card_widget.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Repo.listProduct.length,
        itemBuilder: (context, index) {
          return ItemCardWidget(productModel: Repo.listProduct[index]);
        },
      ),
    );
  }
}

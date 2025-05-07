import 'package:flutter/material.dart';
import 'package:ecommerce25_app/feature/home/data/model/product_model.dart';
import 'package:ecommerce25_app/feature/home/presentation/widget/row_add_sub_item_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'data_card_widget.dart';

class ItemCardWidget extends StatelessWidget {
  const ItemCardWidget({super.key, this.productModel});

  final ProductModel? productModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(4.0).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(12).r,
                  width: 165.w,
                  height: 120.h,
                  child: Image.asset(
                    productModel == null
                        ? "assets/images/fruit/f9.png"
                        : productModel!.image,
                  ),
                ),
                RowAddSubItemWidget(productModel: productModel),
              ],
            ),
            DataCardWidget(productModel: productModel),
          ],
        ),
      ),
    );
  }
}


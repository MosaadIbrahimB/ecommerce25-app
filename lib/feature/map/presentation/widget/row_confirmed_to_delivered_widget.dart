import 'package:ecommerce25_app/feature/map/presentation/data/row_confirmed_model.dart';
import 'package:ecommerce25_app/feature/map/presentation/widget/row_confirmed_widget.dart';
import 'package:flutter/material.dart';
class RowConfirmedToDeliveredWidget extends StatelessWidget {
  const RowConfirmedToDeliveredWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,

        itemBuilder:
            (context, index) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RowConfirmedWidget(
              rowConfirmedModel: RowConfirmedModel.listConfirmed[index],
            ),

            index == 3
                ? SizedBox()
                : Container(width: 20, color: Colors.grey, height: 3),
          ],
        ),

        itemCount: RowConfirmedModel.listConfirmed.length,
      ),
    );
  }
}

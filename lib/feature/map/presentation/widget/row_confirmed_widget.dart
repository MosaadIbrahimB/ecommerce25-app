import 'package:ecommerce25_app/feature/map/presentation/data/row_confirmed_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_style.dart';
class RowConfirmedWidget extends StatelessWidget {
  const RowConfirmedWidget({super.key, required this.rowConfirmedModel});

  final RowConfirmedModel rowConfirmedModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
          width: 40,
          child: Image.asset(rowConfirmedModel.pathImage, fit: BoxFit.fill),
        ),
        SizedBox(height: 10),
        FittedBox(
          child: Text(
            rowConfirmedModel.title,
            style: AppTextStyle.inter16BlackW700.copyWith(
              color: Colors.green,
              fontSize: 11,
            ),
          ),
        ),
      ],
    );
  }
}

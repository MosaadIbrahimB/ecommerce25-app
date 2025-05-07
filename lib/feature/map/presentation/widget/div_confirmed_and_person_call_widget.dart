import 'package:ecommerce25_app/feature/map/presentation/widget/person_call_widget.dart';
import 'package:ecommerce25_app/feature/map/presentation/widget/row_confirmed_to_delivered_widget.dart';
import 'package:flutter/material.dart';

class DivConfirmedAndPersonCallWidget extends StatelessWidget {
  const DivConfirmedAndPersonCallWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black12),
        ),
        child: Column(
          children: [
            RowConfirmedToDeliveredWidget(),
            SizedBox(height: 20),
            PersonCallWidget(),
          ],
        ),
      ),
    );
  }
}

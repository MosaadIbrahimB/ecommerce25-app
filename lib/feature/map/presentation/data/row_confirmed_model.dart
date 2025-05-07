import 'package:flutter/material.dart';
class RowConfirmedModel {
  final String pathImage;
  final String title;

  RowConfirmedModel({required this.pathImage, required this.title});

  static List<RowConfirmedModel> listConfirmed = [
    RowConfirmedModel(
      title: "Confirmed",
      pathImage: "assets/images/confirm_order/confirmed.png",
    ),
    RowConfirmedModel(
      title: "Picking Items",
      pathImage: "assets/images/confirm_order/picking_items.png",
    ),
    RowConfirmedModel(
      title: "Out for delivery",
      pathImage: "assets/images/motocycle.png",
    ),
    RowConfirmedModel(
      title: "Delivered",
      pathImage: "assets/images/confirm_order/delivry.png",
    ),
  ];
}

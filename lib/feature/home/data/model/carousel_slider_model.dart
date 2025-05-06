import 'package:flutter/material.dart';
import 'package:ecommerce25_app/core/utils/app_color.dart';

class CarouselSliderModel {
  final String image;
  final String offer;
  final Color backColor;

  CarouselSliderModel(
     {required this.backColor,
    required this.image,
    required this.offer,
  });

}

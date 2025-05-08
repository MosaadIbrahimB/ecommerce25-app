import 'package:flutter/material.dart';
import 'package:ecommerce25_app/core/utils/app_color.dart';

class CarouselSliderModel {
  final String image;
  final String offer;
  final Color backColor;
  final Color colorFont;
  final Color backGroundColorButton;
  final Color colorFontButton;
  final Color colorEnjoyOffer;

  CarouselSliderModel({
    required this.backColor,
    required this.image,
    required this.offer,
    required this.colorFont,
    required this.backGroundColorButton,
    required this.colorFontButton,
    required this.colorEnjoyOffer,
  });
}

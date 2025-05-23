import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart' ;
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/repo/repo.dart';
import 'item_slider_widget.dart';

class CarouselSliderWidget extends StatelessWidget {
 final  List<Widget> items = List.generate(
    Repo.listCarousel.length,
        (index) => ItemSliderWidget(
      carouselSliderModel: Repo.listCarousel[index],
    ),
  );


   CarouselSliderWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: items,
      options: CarouselOptions(
        height: 130.h,
        aspectRatio: 1,
        viewportFraction: .85,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.linear,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        // onPageChanged: callbackFunction,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

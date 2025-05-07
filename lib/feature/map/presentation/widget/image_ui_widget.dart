import 'package:flutter/material.dart';
class ImageUIWidget extends StatelessWidget {
  const ImageUIWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).width * .90,
      child: Image.asset(
        "assets/images/confirm_order/map.png",
        fit: BoxFit.fill,
      ),
    );
  }
}

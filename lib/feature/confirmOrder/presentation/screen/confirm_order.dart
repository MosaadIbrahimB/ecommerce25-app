import 'package:ecommerce25_app/core/configure/route/app_route.dart';
import 'package:ecommerce25_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class ConfirmingOrderScreen extends StatefulWidget {
  const ConfirmingOrderScreen({super.key});

  @override
  State<ConfirmingOrderScreen> createState() => _ConfirmingOrderScreenState();
}

class _ConfirmingOrderScreenState extends State<ConfirmingOrderScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 1),() {
      if(mounted){
        return Navigator.pushReplacementNamed(context, AppRoute.map);
      }
      },
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Confirming your order ",style: AppTextStyle.inter16BlackW700,),),
    );
  }
}

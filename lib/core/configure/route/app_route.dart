import 'package:ecommerce25_app/feature/confirmOrder/presentation/screen/confirm_order.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce25_app/feature/checkout/presentation/screen/check_out_screen.dart';
import 'package:ecommerce25_app/feature/payment/presentation/screen/payment_screen.dart';

import '../../../feature/cart/presentation/screen/cart_screen.dart';
import '../../../feature/home/presentation/screen/home_screen.dart';
import '../../../feature/map/presentation/screen/map_screen.dart';

class AppRoute{

  static const String home='/';
  static const String cart='/cart';
  static const String checkout='/checkout';
  static const String payment='/payment';
  static const   String confirm='/confirm';
  static const   String map='/map';

  static Route onGenerateRoute(RouteSettings routSetting) {


    switch(routSetting.name){
      case "/":
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case "/cart":
        return MaterialPageRoute(builder: (context) => CartScreen());
      case "/checkout":
        return MaterialPageRoute(builder: (context) => CheckOutScreen());
      case "/payment":
        return MaterialPageRoute(builder: (context) => PaymentScreen());
      case AppRoute.confirm:
        return MaterialPageRoute(builder: (context) => ConfirmingOrderScreen());
      case AppRoute.map:
        return MaterialPageRoute(builder: (context) => MapScreen());
      default:
        return MaterialPageRoute(builder: (context) => _defaultScreen());
    }


  }

  static _defaultScreen(){
    return Scaffold(body: Center(child: Text("Default screen")));
  }

}

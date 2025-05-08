import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce25_app/core/utils/app_text_style.dart';
import 'package:ecommerce25_app/feature/home/presentation/widget/text_basket_view_and_icon_basket_widget.dart';
import 'package:ecommerce25_app/feature/home/presentation/widget/text_delivery_widget.dart';
import 'package:ecommerce25_app/my_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/configure/route/app_route.dart';
import '../../../../core/utils/app_color.dart';
import '../control/home/home_cubit.dart';
import 'list_item_of_bottom_sheet_widget.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Container(
          color: Colors.white,
          height: 600.h,
          child: Column(
            children: [
              //Border Top
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: width * 0.42,
                  vertical: 5,
                ).r,
                height: 4.h,
                decoration: BoxDecoration(color: Color(0xffd9d9d9)),
              ),
              Expanded(child: ListItemOfBottomSheetWidget()),
              TextDeliveryWidget(),
              SizedBox(height: 20.h),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                  Navigator.pushNamed(context, AppRoute.cart);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.green,
                    borderRadius: BorderRadius.circular(10).r,
                  ),
                  width: MediaQuery.sizeOf(context).width * .95,
                  height: 50.h,
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    child: TextBasketViewAndIconBasketWidget(
                      goToCheck: true,
                      title: "Go to Cart",
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.h),
            ],
          ),
        );
      },
    );
  }
}


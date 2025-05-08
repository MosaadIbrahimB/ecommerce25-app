import 'package:ecommerce25_app/core/configure/route/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce25_app/feature/checkout/presentation/widgets/type_credit_card_widget.dart';
import 'package:ecommerce25_app/feature/home/presentation/control/home/home_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_text_style.dart';
import 'button_green_widget.dart';
import 'card_input_field.dart';
import 'cvc_field.dart';
import 'expiry_date_field.dart';

class CustomCardCreditWidget extends StatelessWidget {
  CustomCardCreditWidget({super.key});
  final TextEditingController dateController = TextEditingController();
  final TextEditingController cVCControl = TextEditingController();

  final  TextEditingController? control = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8.h),

        Text(
          "Card number",
          style: AppTextStyle.inter16BlackW700.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 8.h),
        Container(
          padding: EdgeInsets.all(8).r,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(8).r,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width * .55,
                child: CardInputField(),
              ),
              TypeCreditCardWidget(),
            ],
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Expiry",
                  style: AppTextStyle.inter16BlackW700.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  height: 45.h,
                  width: MediaQuery.sizeOf(context).width * .45,
                  padding: EdgeInsets.all(8).r,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(8).r,
                  ),

                  child: ExpiryDateField(controller: dateController),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "CVC",
                  style: AppTextStyle.inter16BlackW700.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  height: 45.h,
                  width: MediaQuery.sizeOf(context).width * .45,
                  padding: EdgeInsets.all(8).r,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(8).r,
                  ),

                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * .35,
                        child: CVCField(controller: cVCControl),
                      ),
                      SizedBox(
                        height: 20.h,
                        width: 20.w,
                        child: Image.asset(
                          "assets/images/pay/cvc.png",
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ],
        ),
        SizedBox(height: 20.h,),
        ButtonGreenWidget
          (
          onTap: (){
            Navigator.pushReplacementNamed(context, AppRoute.confirm);
          },

          title: "Confirm and Pay (\$ ${BlocProvider.of<HomeCubit>(context).getTotal()})" ,)

      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ecommerce25_app/feature/home/presentation/control/home/home_cubit.dart';

import '../../../../core/utils/app_text_style.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset("assets/images/fruit/motocycle.svg", width: 35),
        SizedBox(width: 12),
        Text("61 Hopper street..", style: AppTextStyle.inter16BlackW700),
        SizedBox(width: 8),
        SvgPicture.asset("assets/images/fruit/arrow_dawn.svg"),
        Spacer(),
        GestureDetector(
          onTap: () {
            BlocProvider.of<HomeCubit>(context).changeViewBasket();
          },

          child: SvgPicture.asset("assets/images/fruit/bage.svg", width: 25),
        ),
      ],
    );
  }
}

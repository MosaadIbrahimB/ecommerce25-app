import 'package:ecommerce25_app/feature/home/presentation/screen/splash_fruit_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/configure/route/app_route.dart';
import 'feature/home/presentation/control/home/home_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: ScreenUtilInit(
        designSize: const Size(430, 687),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Modern Authentication',
          onGenerateRoute: AppRoute.onGenerateRoute,
          // home: SplashFruitScreen(),
        ),
      ),
    );
  }
}



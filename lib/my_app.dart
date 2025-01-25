import 'package:e_commerce_elect/src/core/style/color_app.dart';
import 'package:e_commerce_elect/src/feature/auth/cubit/auth_cubit.dart';
import 'package:e_commerce_elect/src/feature/auth/view/screen/log_in_screen.dart';
import 'package:e_commerce_elect/src/feature/cart/cubit/cart_cubit.dart';
import 'package:e_commerce_elect/src/feature/fav/cubit/fav_cubit.dart';
import 'package:e_commerce_elect/src/feature/splash/view/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => AuthCubit(),
              ),
              BlocProvider(
                create: (context) => CartCubit(),
              ),
              BlocProvider(
                create: (context) => FavCubit(),
              ),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'E-Commerce',
              theme: ThemeData(
                colorScheme:
                    ColorScheme.fromSeed(seedColor: ColorsApp.kSecondaryColor),
                useMaterial3: true,
              ),
              home: SplashPage(),
            ),
          );
        });
  }
}

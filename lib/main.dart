import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_project/core/Widgets/custom_buttom.dart';
import 'package:todo_project/core/Widgets/custom_text_but.dart';
import 'package:todo_project/core/utils/app_colors.dart';
import 'package:todo_project/features/get_start/views/splash_view.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_ , child)=> MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.background ,
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.background,
            elevation: 0,
          ) ,
          fontFamily: 'Lexend_Deca',

        ),
        home: SplashView(),


      ),
    );



  }
}





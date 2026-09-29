
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_task/core/helper/my_navigator.dart';
import 'package:todo_task/core/utils/app_assets.dart';
import 'package:todo_task/features/get_start/views/let_Start.dart';

import '../../../core/Widgets/custom_svg_wrapper.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
        (){
       MyNavigator.goTo(context, LetStart());
        }


    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomSvgWrapper(path: AppAssets.logo ,
          height: 344.h,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
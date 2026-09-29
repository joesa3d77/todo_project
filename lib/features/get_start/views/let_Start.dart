
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_task/core/Widgets/custom_buttom.dart';
import 'package:todo_task/core/Widgets/custom_svg_wrapper.dart';
import 'package:todo_task/core/helper/my_navigator.dart';
import 'package:todo_task/core/utils/app_assets.dart';
import 'package:todo_task/core/utils/app_paddings.dart';
import 'package:todo_task/features/auth/views/login_view.dart';

import '../../../core/utils/app_colors.dart';

class LetStart extends StatelessWidget{
  const LetStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: AppPaddings.defualtPadding ,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
        
              CustomSvgWrapper(path: AppAssets.object,
                   height: 342.h,
             width: double.infinity,
                   ),
              Text('Welcome To \n Do It !',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.sp,
                  color: AppColors.black,
                  fontWeight: FontWeight.w400
        
                ),
        
                ),
              Text('Ready to conquer your tasks? Lets \n Do It together.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: AppColors.grey,
                  fontWeight: FontWeight.w500
                )
              ),
              CustomButtom(text: 'Let’s Start',
                  onPressed: ()=> MyNavigator.goTo(context, LoginView(),
                  )
        
              )
                  ],
                  ),
          ),
            ),
      )
    );

  }




}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_task/core/Widgets/custom_svg_wrapper.dart';
import 'package:todo_task/core/utils/app_colors.dart';
import 'package:todo_task/core/utils/app_assets.dart';
import 'package:todo_task/features/tasks/presentation/views/add_task_view.dart';



class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 15.h,
          ),

          child: Column(
            children: [


              Row(
                children: [


                  Container(
                    width: 45.w,
                    height: 45.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(AppAssets.flag
                     ,
                      fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(width: 12.w),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello!',
                        style: TextStyle(
                          fontSize: 11.sp,
                          color: AppColors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      SizedBox(height: 3.h),

                      Text(
                        'Username',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: AppColors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),


              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text(
                      'There are no tasks yet,\n'
                          'Press the button\n'
                          'To add New Task',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: AppColors.black,
                        height: 1.25,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    SizedBox(height: 40.h),


                    SizedBox(
                      width: 250.w,
                      height: 190.h,

                      child: CustomSvgWrapper(path: AppAssets.noTask),


                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),


      floatingActionButton: Padding(
        padding: EdgeInsets.only(
          right: 5.w,
          bottom: 5.h,
        ),

        child: SizedBox(
          width: 48.w,
          height: 48.w,

          child: FloatingActionButton(
            backgroundColor: AppColors.primary,
            elevation: 3,

            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddTaskView(),
                ),
              );
            },

            child: CustomSvgWrapper(path: AppAssets.addTask),
            ),
          ),
        ),
      );

  }
}
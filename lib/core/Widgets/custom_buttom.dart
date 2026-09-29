import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_project/core/utils/app_colors.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, required this.text, required this.onPressed});

  final String text;

  final void Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,

        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.r)
              )

          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
                color: AppColors.white,
                fontSize: 19.sp,
                fontWeight: FontWeight.w300
            ),
          ),

        )


    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_project/core/utils/app_colors.dart';

class CustomTextBut  extends StatelessWidget{
  const CustomTextBut({super.key, required this.text, required this.onPressed});
  final String text;

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            color: AppColors.black
          ),
        )
    );


  }




}
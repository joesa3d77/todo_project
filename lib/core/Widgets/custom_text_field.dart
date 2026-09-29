import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_project/core/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final bool obscureText;

  const CustomTextField({
    super.key,
    required this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,

      // 👈 السطر اللي كان ناقص
      obscureText: obscureText,

      style: TextStyle(
        color: AppColors.black,
        fontSize: 14.sp,
        fontWeight: FontWeight.w200,
      ),

      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.white,

        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,

        hintText: hintText,

        hintStyle: TextStyle(
          fontWeight: FontWeight.w100,
          fontSize: 14.sp,
          color: AppColors.grey,
        ),

        border: borderBuilder(),
        enabledBorder: borderBuilder(),
        focusedBorder: borderBuilder(
          color: AppColors.primary,
        ),
        errorBorder: borderBuilder(
          color: AppColors.red,
        ),
        focusedErrorBorder: borderBuilder(
          color: AppColors.primary,
        ),
      ),
    );
  }

  InputBorder borderBuilder({
    Color color = AppColors.lightGray,
  }) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.r),
        borderSide: BorderSide(
          color: color,
        ),
      );
}
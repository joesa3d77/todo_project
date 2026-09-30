
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_project/core/Widgets/custom_buttom.dart';
import 'package:todo_project/core/Widgets/custom_svg_wrapper.dart';
import 'package:todo_project/core/Widgets/custom_text_field.dart';
import 'package:todo_project/core/Widgets/default_flag.dart';
import 'package:todo_project/core/helper/my_navigator.dart';
import 'package:todo_project/core/utils/app_assets.dart';
import 'package:todo_project/core/utils/app_colors.dart';
import 'package:todo_project/core/utils/app_paddings.dart';
import 'package:todo_project/features/auth/views/register_view.dart';

import '../../home/views/no_task.dart';

class LoginView extends StatefulWidget{
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var username = TextEditingController();
  var password = TextEditingController();
  bool passwordSecure = true;


  @override
  Widget build(BuildContext context)
{
return Scaffold(body: Column(
  children: [
    DefaultFlag(),

    Padding(
      padding: AppPaddings.defualtPadding,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 23.h),
        
            CustomTextField(
              controller: username,
              prefixIcon: IconButton(
                onPressed: null,
                icon: CustomSvgWrapper(
                  path: AppAssets.person,
                ),
              ),
              hintText: 'Username',
            ),
        
            SizedBox(height: 10.h),
        
            CustomTextField(
              controller: password,
              prefixIcon: IconButton(
                onPressed: null,
                icon: CustomSvgWrapper(
                  path: AppAssets.password,
                ),
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    passwordSecure = !passwordSecure;
                  });
                },
                icon: CustomSvgWrapper(
                  path: AppAssets.unlock,
                ),
              ),
              obscureText: passwordSecure,
              hintText: 'Password',
            ),
        
            SizedBox(height: 23.h),
        
            CustomButtom(
              text: 'Login',
              onPressed: () => MyNavigator.goTo(
                context,
                HomeView(),
              ),
            ),
        
            SizedBox(height: 42.h),
        
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don’t Have An Account? ', style: TextStyle(
                  fontWeight: FontWeight.w200
                ),),
        
        
                SizedBox(
                  width: 100.w,
                  child: TextButton(
                    onPressed: () {
                      MyNavigator.goTo(
                        context,
                        RegisterView(),
                      );
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  ],
),
);

     }
}


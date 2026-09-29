
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_task/features/auth/views/login_view.dart';

import '../../../core/Widgets/custom_buttom.dart';
import '../../../core/Widgets/custom_svg_wrapper.dart';
import '../../../core/Widgets/custom_text_field.dart';
import '../../../core/Widgets/default_flag.dart';
import '../../../core/helper/my_navigator.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_paddings.dart';

class RegisterView extends StatefulWidget{
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  var username = TextEditingController();
  var password = TextEditingController();
  var ConfirmPassword = TextEditingController();
  bool passwordSecure = true;
  bool ConfirmPasswordSecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                      onPressed: () { setState(() {
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
                  SizedBox(height: 10.h,),
                  CustomTextField(
                    controller: ConfirmPassword,
                    prefixIcon: IconButton(
                      onPressed: null,
                      icon: CustomSvgWrapper(
                        path: AppAssets.password,
                      ),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () { setState(() {
                        ConfirmPasswordSecure = !ConfirmPasswordSecure;
                      });
                      },
                      icon: CustomSvgWrapper(
                        path: AppAssets.unlock,
                      ),
                    ),
                    obscureText: ConfirmPasswordSecure,
                    hintText: 'Confirm Password',
                  ),

                  SizedBox(height: 23.h),

                  CustomButtom(
                    text: 'Register',
                    onPressed: () => MyNavigator.goTo(
                      context,
                     LoginView(),
                    ),
                  ),

                  SizedBox(height: 42.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(' Have An Account? ', style: TextStyle(
                          fontWeight: FontWeight.w200
                      ),),


                      SizedBox(
                        width: 100.w,
                        child: TextButton(
                          onPressed: () {
                            MyNavigator.goTo(
                              context,
                              LoginView(),
                            );
                          },
                          child: Text(
                            'Login',
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

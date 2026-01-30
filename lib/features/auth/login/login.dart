import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/features/auth/login/widget/Sign_up_text.dart';
import 'package:grocery_app/features/auth/login/widget/app_bar.dart';
import 'package:grocery_app/features/auth/login/widget/background_image.dart';
import 'package:grocery_app/features/auth/login/widget/login_buttom.dart';
import 'package:grocery_app/features/auth/login/widget/remember_me.dart';
import 'package:grocery_app/features/auth/login/widget/text_fields.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //  Background image
          BackgroundImage(),

          // Back arrow + "Welcome" text
          Positioned(top: 20.h, left: 10.w, child: CustomAppBar()),

          //  Bottom login container
          SafeArea(
            bottom: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20.w),
                  decoration: BoxDecoration(
                    color: const Color(0xffF4F5F9),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.r),
                      topRight: Radius.circular(10.r),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome back !", style: TextStyle(fontSize: 25.sp)),
                      SizedBox(height: 3.h),
                      Text(
                        "Sign in to your account",
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: const Color(0xff868889),
                        ),
                      ),
                      SizedBox(height: 26.h),
                      // Text Form Fields
                      TextFields(),

                      SizedBox(height: 21.h),
                      // Remember me?
                      RememberMe(),

                      SizedBox(height: 17.h),
                      // Login Button
                      LoginButtom(),

                      SizedBox(height: 15.h),
                      // Sign Up Text with navigator
                      SignUpText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

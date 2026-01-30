import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/features/auth/signup/widget/background.dart';
import 'package:grocery_app/features/auth/signup/widget/login_text.dart';
import 'package:grocery_app/features/auth/signup/widget/signup_button.dart';
import 'package:grocery_app/features/auth/signup/widget/signup_text_fields.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),

          // Top AppBar or back button
          Positioned(top: 20.h, left: 10.w, child: AppBar()),

          // Bottom container with fields
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
                      Text("Create account", style: TextStyle(fontSize: 25.sp)),
                      SizedBox(height: 2.h),
                      Text(
                        "Quickly create account",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff868889),
                        ),
                      ),
                      SizedBox(height: 26.h),
                      // Text fields
                      SignUpTextFields(),
                      SizedBox(height: 20.h),
                      // Signup button
                      SignUpButton(),
                      SizedBox(height: 15.h),
                      // Login text
                      LoginText(),
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

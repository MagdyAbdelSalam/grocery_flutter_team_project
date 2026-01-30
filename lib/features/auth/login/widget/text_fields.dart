import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFields extends StatelessWidget {
  const TextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: "Email Address",
            prefixIcon: Icon(Icons.email_outlined, size: 24.r),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        SizedBox(height: 5.h),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Password",
            prefixIcon: Icon(Icons.lock_outline, size: 24.r),
            suffixIcon: Icon(Icons.visibility_off, size: 24.r),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300.h,
      child: Image.asset(
        'assets/images/Signup_Background.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}

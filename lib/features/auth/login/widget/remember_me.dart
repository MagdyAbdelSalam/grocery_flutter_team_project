import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RememberMe extends StatelessWidget {
  const RememberMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.check_box_outline_blank, size: 20.r),
        SizedBox(width: 6.w),
        Text("Remember me", style: TextStyle(fontSize: 13.sp)),
        Spacer(),
        Text(
          "Forgot password",
          style: TextStyle(fontSize: 13.sp, color: Colors.blue),
        ),
      ],
    );
  }
}

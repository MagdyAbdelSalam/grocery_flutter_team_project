import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryBox extends StatelessWidget {
  final String imagePath;
  final String title;
  final Color color;
  final VoidCallback? onTap;

  const CategoryBox({
    super.key,
    required this.imagePath,
    required this.title,
    required this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16.r),
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 26.r,
              backgroundImage: AssetImage(imagePath),
              backgroundColor: Colors.transparent,
            ),

            SizedBox(height: 9.h),
            Text(title, style: TextStyle(fontSize: 12.sp)),
          ],
        ),
      ),
    );
  }
}

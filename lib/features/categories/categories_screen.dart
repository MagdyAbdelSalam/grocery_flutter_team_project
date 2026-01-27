import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/features/categories/widgets/CategoryItem.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Categories",style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
        ),),
      ),
    );
  }
}

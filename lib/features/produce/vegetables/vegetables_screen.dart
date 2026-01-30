import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/features/produce/vegetables/widgets/vegetables_box.dart';

class VegetablesScreen extends StatelessWidget {
  const VegetablesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F5F9),
      appBar: AppBar(
        title: Text("Vegetables", style: TextStyle(fontSize: 18.sp)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 24.r),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: Icon(Icons.tune, size: 24.r),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 18.w,
          mainAxisSpacing: 20.h,
          childAspectRatio: 0.60, // keeps overflow fixed
          children: [
            VegetablesBox(
              imgheight: 50.h,
              imgwidth: 50.w,
              imagePath: "assets/images/peach.png",
              title: "Fresh Peachs",
              price: "\$8.00",
              weight: "dozen",
              color: const Color(0xffFFCEC1),
            ),
            VegetablesBox(
              imgheight: 50.h,
              imgwidth: 50.w,
              imagePath: "assets/images/Avacoda.png",
              title: "Avacoda",
              price: "\$7.00",
              weight: "2.0 lbs",
              color: const Color(0xffFCFFD9),
            ),
            VegetablesBox(
              imgheight: 80.h,
              imgwidth: 80.w,
              imagePath: "assets/images/Pineapple.png",
              title: "Pineapple",
              price: "\$9.90",
              weight: "1.50 lbs",
              color: const Color(0xffFFE6C2),
            ),
            VegetablesBox(
              imgheight: 50.h,
              imgwidth: 50.w,
              imagePath: "assets/images/Grapes.png",
              title: "Black Grapes",
              price: "\$9.90",
              weight: "5.0 lbs",
              color: const Color(0xffFEE1ED),
            ),
            VegetablesBox(
              imgheight: 50.h,
              imgwidth: 50.w,
              imagePath: "assets/images/Pomegranate.png",
              title: "Pomegranate",
              price: "\$9.90",
              weight: "1.50 lbs",
              color: const Color(0xffFFE6C2),
            ),
            VegetablesBox(
              imgheight: 50.h,
              imgwidth: 50.w,
              imagePath: "assets/images/Broccoli.png",
              title: "Fresh Broccoli",
              price: "\$9.90",
              weight: "1kg",
              color: const Color(0xffD2FFD0),
            ),
          ],
        ),
      ),
    );
  }
}

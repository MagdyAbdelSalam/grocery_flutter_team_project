import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/features/categories/widget/category_box.dart';
import 'package:grocery_app/features/produce/vegetables/vegetables_screen.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F7),
      appBar: AppBar(
        title: Text("Categories", style: TextStyle(fontSize: 20.sp)),
        centerTitle: true,
        leading: Icon(Icons.arrow_back, size: 24.sp),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: Icon(Icons.tune, size: 24.sp),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 14.h,
          children: [
            CategoryBox(
              imagePath: "assets/images/Vegetables.png",
              title: "Vegetables",
              color: Colors.green,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VegetablesScreen()),
                );
              },
            ),
            CategoryBox(
              imagePath: "assets/images/Fruits.png",
              title: "Fruits",
              color: Colors.red,
            ),
            CategoryBox(
              imagePath: "assets/images/Beverages.png",
              title: "Beverages",
              color: Colors.orange,
            ),
            CategoryBox(
              imagePath: "assets/images/Grocery.png",
              title: "Grocery",
              color: Colors.purple,
            ),
            CategoryBox(
              imagePath: "assets/images/Edible_oil.png",
              title: "Edible Oil",
              color: Colors.teal,
            ),
            CategoryBox(
              imagePath: "assets/images/House_hold.png",
              title: "Household",
              color: Colors.pink,
            ),
            CategoryBox(
              imagePath: "assets/images/Baby_care.png",
              title: "Babycare",
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

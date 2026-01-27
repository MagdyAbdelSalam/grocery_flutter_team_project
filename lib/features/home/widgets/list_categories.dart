import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../categories/categories_screen.dart';
import '../../categories/widgets/CategoryItem.dart';

class ListCategories extends StatelessWidget {
  const ListCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> CategoriesScreen()));
                  },
                    child: Icon(
                        Icons.arrow_forward_ios,
                        size: 16.sp)
                ),
              ],
            ),
            SizedBox(height: 12.h),

            // Categories List
            SizedBox(
              height: 100.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children:  [
                  CategoryItem(
                    icon: Icons.eco,
                    title: "Vegetables",
                    bgColor:  Color(0xffE6F4EA),
                    iconColor:  Color(0xff34A853),
                  ),
                  SizedBox(width:19.w,),
                  CategoryItem(
                    icon: Icons.apple,
                    title: "Fruits",
                    bgColor:  Color(0xffFDECEA),
                    iconColor:  Color(0xffEA4335),
                  ),
                  SizedBox(width:19.w,),
                  CategoryItem(
                    icon: Icons.local_drink,
                    title: "Beverages",
                    bgColor:  Color(0xffFFF4E5),
                    iconColor:  Color(0xffFBBC04),
                  ),
                  SizedBox(width:19.w,),
                  CategoryItem(
                    icon: Icons.shopping_basket,
                    title: "Grocery",
                    bgColor:  Color(0xffEFE9FF),
                    iconColor:  Color(0xff7B61FF),
                  ),
                  SizedBox(width:19.w,),
                  CategoryItem(
                    icon: Icons.oil_barrel,
                    title: "Edible oil",
                    bgColor:  Color(0xffE6FAF8),
                    iconColor:  Color(0xff00B3A4),
                  ),
                  SizedBox(width:19.w,),
                  CategoryItem(
                    icon: Icons.cleaning_services,
                    title: "Household",
                    bgColor:  Color(0xffFDE6F0),
                    iconColor:  Color(0xffEC407A),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],);
  }
}

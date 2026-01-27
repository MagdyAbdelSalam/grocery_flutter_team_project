import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../categories/widgets/CategoryItem.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: 17.h,horizontal: 15.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    onTapOutside: (v){
                      FocusScope.of(context).unfocus();
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      hintText: "Search keywords",
                      prefixIcon: Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.r),
                        borderSide: BorderSide.none
              
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide: BorderSide.none
              
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Stack(
                    children: [
                      Image.asset('assets/images/Mask Group.jpg'),
                      Positioned(
                        top: 151.sp,
                        bottom: 55.sp,
                        left: 61.sp,
                        child: Text('20% off on your\n first purchase',style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),),
                      )
                    ],
                  ),
                  SizedBox(height: 20.h,),
                  Column(children: [
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
                    Icon(Icons.arrow_forward_ios, size: 16.sp),
                  ],
                ),
                 SizedBox(height: 12.h),

                // Categories List
                SizedBox(
                  height: 90.h,
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
          ],),
                ],
              ),
            ),
          ),
        ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor:  Color(0xFF76C728),
        elevation: 2,
        shape:  CircleBorder(
          side: BorderSide(color: Colors.white, width: 4.w),
        ),
        child:  Icon(Icons.shopping_bag_outlined, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        padding:  EdgeInsets.symmetric(vertical: 10.h),
        shape:  CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          children: [
             SizedBox(width: 20.w),
            IconButton(icon:  Icon(Icons.home_outlined, size: 28.sp), onPressed: () {}),
             SizedBox(width: 30.w),
            IconButton(icon:  Icon(Icons.person_outline, size: 28.sp, color: Colors.grey), onPressed: () {}),
             SizedBox(width: 30.w),
            IconButton(icon:  Icon(Icons.favorite_border, size: 28.sp, color: Colors.grey), onPressed: () {}),
          ],
        ),
      ),

    );
  }
}





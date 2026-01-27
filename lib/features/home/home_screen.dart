import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/features/home/widgets/floatingactionbutton.dart';
import 'package:grocery_app/features/home/widgets/list_categories.dart';

import '../../core/widgets/bottom_nav_bar.dart';


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
                  ListCategories(),
                ],
              ),
            ),
          ),
        ),

      floatingActionButton: Floatingactionbutton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomNavBar(),



    );
  }
}





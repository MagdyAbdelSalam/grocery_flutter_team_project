import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../features/ favorites/favorites_screen.dart';
import '../../features/portfolio/portfolio_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      padding:  EdgeInsets.symmetric(vertical: 10.h),
      shape:  CircularNotchedRectangle(),
      notchMargin: 8.0,
      child: Row(
        children: [
          SizedBox(width: 20.w),
          IconButton(icon:  Icon(Icons.home_outlined, size: 28.sp), onPressed: () {}),
          SizedBox(width: 30.w),
          IconButton(icon:  Icon(Icons.person_outline, size: 28.sp, color: Colors.grey), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> PortfolioScreen()));
          }),
          SizedBox(width: 30.w),
          IconButton(icon:  Icon(Icons.favorite_border, size: 28.sp, color: Colors.grey), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> FavoritesScreen()));
          }),
        ],
      ),
    );
    }
}
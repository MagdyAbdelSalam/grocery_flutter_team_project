import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
    appBar: AppBar(
       title: Text("Favorites",style: TextStyle(
         fontSize: 18.sp,
         fontWeight: FontWeight.w500,
       ),),
    ),
    );
  }
}

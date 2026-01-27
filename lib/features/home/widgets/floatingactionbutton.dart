import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../order_success/order_success_screen.dart';


class Floatingactionbutton extends StatelessWidget {
  const Floatingactionbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OrderSuccessScreen(),
          ),
        );
      },


      backgroundColor:  Color(0xFF76C728),
      elevation: 2,
      shape:  CircleBorder(
        side: BorderSide(color: Colors.white, width: 4.w),
      ),
      child:  Icon(Icons.shopping_bag_outlined, color: Colors.white),
    );
  }
}

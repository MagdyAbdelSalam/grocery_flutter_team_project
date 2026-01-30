import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VegetablesBox extends StatefulWidget {
  final String imagePath;
  final String price;
  final String title;
  final String weight;
  final Color color;
  final double imgwidth;
  final double imgheight;

  const VegetablesBox({
    super.key,
    required this.imagePath,
    required this.title,
    required this.color,
    required this.price,
    required this.weight,
    required this.imgwidth,
    required this.imgheight,
  });

  @override
  State<VegetablesBox> createState() => _VegetablesBoxState();
}

class _VegetablesBoxState extends State<VegetablesBox> {
  int quantity = 0;

  void increase() {
    setState(() {
      quantity++;
    });
  }

  void decrease() {
    if (quantity > 0) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 🧱 Main Card
        Container(
          width: 181.w, // responsive width
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.r), // responsive radius
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.w), // responsive padding
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      CircleAvatar(
                        radius: 30.r, // responsive radius
                        backgroundColor: widget.color,
                      ),
                      Positioned(
                        bottom: -10.h, // responsive offset
                        child: Image.asset(
                          widget.imagePath,
                          width: widget.imgwidth.w, // responsive
                          height: widget.imgheight.h, // responsive
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.h),

                /// PRICE
                Text(
                  widget.price,
                  style: TextStyle(
                    color: const Color(0xff6CC51D),
                    fontSize: 12.sp, // responsive font
                    fontWeight: FontWeight.w500,
                  ),
                ),

                /// TITLE
                Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 15.sp, // responsive font
                    fontWeight: FontWeight.w600,
                  ),
                ),

                /// WEIGHT
                Text(
                  widget.weight,
                  style: TextStyle(
                    color: const Color(0xFF688889),
                    fontSize: 12.sp, // responsive font
                    fontWeight: FontWeight.w500,
                  ),
                ),

                Divider(color: Colors.grey, thickness: 1.h, height: 24.h),

                /// COUNTER
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: decrease,
                      icon: Icon(
                        Icons.remove,
                        color: const Color(0xff6CC51D),
                        size: 20.r,
                      ),
                    ),
                    Text(
                      quantity.toString(),
                      style: TextStyle(fontSize: 16.sp), // responsive font
                    ),
                    IconButton(
                      onPressed: increase,
                      icon: Icon(
                        Icons.add,
                        color: const Color(0xff6CC51D),
                        size: 20.r,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 8.h),
                Text(
                  "Add Item",
                  style: TextStyle(
                    color: const Color(0xff6CC51D),
                    fontSize: 13.sp,
                  ),
                ),
                SizedBox(height: 8.h),
              ],
            ),
          ),
        ),

        // NEW badge
        Positioned(
          top: 8.h,
          left: 8.w,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 6.w,
              vertical: 2.h,
            ), // responsive
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(6.r), // responsive radius
            ),
            child: Text(
              'NEW',
              style: TextStyle(
                color: Colors.white,
                fontSize: 8.sp, // responsive font
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        // Heart icon
        Positioned(
          top: 8.h,
          right: 8.w,
          child: Icon(
            Icons.favorite,
            color: Colors.red,
            size: 16.r,
          ), // responsive
        ),
      ],
    );
  }
}

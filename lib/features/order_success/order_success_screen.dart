import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F5F9),
      appBar: AppBar(
        title: Center(child: Text('Order Success')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/Vector.svg'),
            SizedBox(height: 36,),
            Text('Your order was\n    succesfull !',style: GoogleFonts.poppins(
              fontSize: 20.h,
              fontWeight: FontWeight.w600,
            )),
            SizedBox(height: 15,),
            Text('You will get a response within\n               a few minutes.',style: GoogleFonts.poppins(
              color: Colors.grey.shade500,
              fontSize: 15.h,
              fontWeight: FontWeight.w500,
            )),
          ],
        ),
      ),
    );
  }
}
